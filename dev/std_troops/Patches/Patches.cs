using HarmonyLib;
using JetBrains.Annotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using TaleWorlds.CampaignSystem;
using TaleWorlds.CampaignSystem.CampaignBehaviors;
using TaleWorlds.CampaignSystem.Party;
using TaleWorlds.Core;
using TaleWorlds.Engine;
using TaleWorlds.Engine.InputSystem;
using TaleWorlds.InputSystem;
using TaleWorlds.Library;
using TaleWorlds.MountAndBlade;


namespace std_troops.Patches
{

    [HarmonyPatch]
    public class ChooseFullRosterOnSpawn
    {
        [HarmonyPrefix]
        [HarmonyPatch(typeof(Equipment), nameof(Equipment.GetRandomEquipmentElements))]
        public static bool AssignWholeRoster(ref Equipment __result, BasicCharacterObject character, bool randomEquipmentModifier,
            bool isCivilianEquipment = false, int seed = -1)
        {
            Equipment equipment = new Equipment(isCivilianEquipment);
            List<Equipment> list = character.AllEquipments.Where((Equipment eq) => eq.IsCivilian == isCivilianEquipment && !eq.IsEmpty()).ToList();
            if (list.IsEmpty())
            {
                __result = equipment;
                return false;
            }

            int count = list.Count;
            Random random = new Random(seed);
            int weaponSet = MBRandom.RandomInt(count);
            for (int i = 0; i < 12; i++)
            {
                equipment[i] = list[weaponSet].GetEquipmentFromSlot((EquipmentIndex)i);
                if (randomEquipmentModifier)
                {
                    ItemModifier itemModifier = equipment[i].Item?.ItemComponent?.ItemModifierGroup?.GetRandomItemModifierLootScoreBased();
                    if (itemModifier != null)
                    {
                        equipment[i].SetModifier(itemModifier);
                    }
                }
            }

            __result = equipment;
            return false;
        }
    }

    [HarmonyPatch]
    public class GiveHorseBackOnUpgrade
    {
        [HarmonyPostfix]
        [HarmonyPatch(typeof(CampaignEvents), "OnPlayerUpgradedTroops")]
        public static void AddHorseBackToInventoryPatch(CharacterObject upgradeFromTroop, CharacterObject upgradeToTroop, int number)
        {
            // if both troop versions have a horse
            if (upgradeFromTroop.HasMount() && upgradeToTroop.HasMount())
            {
                var horse = upgradeFromTroop.Equipment.Horse.Item;
                // if the upgraded version doesn't require a horse from the player's inventory, return
                // if both troop versions have the same horse, return
                if (!upgradeToTroop.UpgradeRequiresItemFromCategory.IsAnimal
                    || horse.Equals(upgradeToTroop.Equipment.Horse.Item))
                {
                    return;
                }
                // add the From's horse back to the player's inventory
                var party = MobileParty.MainParty;
                var inv = party.ItemRoster;
                var item = new ItemRosterElement(horse, number);
                inv.Add(item);
                var msg = "Horse" + (number > 1 ? "s" : "") + " Retrived: ";
                msg += (number > 1 ? number + " " : "") + item.EquipmentElement.GetModifiedItemName();
                MBInformationManager.AddQuickInformation(new TaleWorlds.Localization.TextObject(msg));
            }
        }
    }

    [HarmonyPatch]
    public class SetAIProperties
    {
        static bool comma_held = false;

        static float maxdef = 0f;

        [HarmonyPostfix]
        [HarmonyPatch(typeof(MBSubModuleBase), "OnApplicationTick")]
        public static void CheckButton(float dt)
        {
            comma_held = Input.IsKeyDown(InputKey.Comma);
        }

        /* Set the Maximum Skill-Level for calculation to 260 instead of 350. This should make all AI stronger. */
        [HarmonyPrefix]
        [HarmonyPatch(typeof(AgentStatCalculateModel), "CalculateAILevel")]
        public static bool OverrideAILevelCalculation(
            ref AgentStatCalculateModel __instance, ref float __result, Agent agent, int relevantSkillLevel)
        {
            float diffmod = __instance.GetDifficultyModifier();
            __result = MBMath.ClampFloat((float)relevantSkillLevel / 260f * diffmod, 0f, 1f);
            return false;
        }

        private static float CalcAILevel(float skill, float diffmod)
        {
            return MBMath.ClampFloat(skill / 260f * diffmod, 0f, diffmod);
        }

        /* Adjust various in-battle AI properties. */
        [HarmonyPostfix]
        [HarmonyPatch(typeof(AgentStatCalculateModel), "SetAiRelatedProperties")]
        public static void SetAiProperties(
            ref AgentStatCalculateModel __instance, ref Agent agent, ref AgentDrivenProperties agentDrivenProperties, WeaponComponentData equippedItem, WeaponComponentData secondaryItem)
        {
            if (agent.IsPlayerControlled) return;

            string agentname = agent.Character.Name.ToString(); // Debug info

            //** Get skill values
            MethodInfo GetMeleeSkill = typeof(AgentStatCalculateModel).GetMethod("GetMeleeSkill", BindingFlags.NonPublic | BindingFlags.Instance);
            GetMeleeSkill.DeclaringType.GetMethod("GetMeleeSkill");
            SkillObject eqitemskill = equippedItem == null ? DefaultSkills.Athletics : equippedItem.RelevantSkill;
            SkillObject secitemskill = secondaryItem == null ? null : secondaryItem.RelevantSkill;
            int melskill = (int)GetMeleeSkill.Invoke(__instance, new object[] { agent, equippedItem, secondaryItem });
            int effskill = __instance.GetEffectiveSkill(agent.Character, agent.Origin, agent.Formation, eqitemskill);

            //** Translate skill values to usable numbers for AI calculation
            float diffmod = __instance.GetDifficultyModifier();
            float mellvl = CalcAILevel(melskill, diffmod);
            float invmellvl = 1f - mellvl;
            float efflvl = CalcAILevel(effskill, diffmod);
            float invefflvl = MBMath.ClampFloat(1f - efflvl, 0f, 1f);
            float def = agent.Defensiveness;

            //** Defense Probabilities (I think `def` will always be 0, 1, or 2, with 2 being the most defensive)
            float prevshieldmissile = agentDrivenProperties.AiUseShieldAgainstEnemyMissileProbability;
            float prevranddefchance = agentDrivenProperties.AiRandomizedDefendDirectionChance;
            float shieldmissilechance;  // y = ln(x + z)        ... z is varying constant
            float randdefchance;        // y = 1.2 - ln(x + w)  ... w is varying constant
            if (def >= 1.9f)
            {
                shieldmissilechance = MBMath.ClampFloat(MathF.Log(mellvl + 2.11f), 0f, .92f);
                randdefchance = MBMath.ClampFloat(1.2f - MathF.Log(mellvl + 2.265f), .08f, 1f);
            }
            else if (def >= .9f)
            {
                shieldmissilechance = MBMath.ClampFloat(MathF.Log(mellvl + 1.8f), .25f, .95f);
                randdefchance = MBMath.ClampFloat(1.2f - MathF.Log(mellvl + 2.33f), .05f, 1f);
            }
            else // 0 `def` seems to be most common
            {
                shieldmissilechance = MBMath.ClampFloat(MathF.Log(mellvl + 1.52f), .45f, .98f);
                randdefchance = MBMath.ClampFloat(1.2f - MathF.Log(mellvl + 2.4f), .08f, 1f);
            }
            agentDrivenProperties.AiUseShieldAgainstEnemyMissileProbability = shieldmissilechance;
            agentDrivenProperties.AiRandomizedDefendDirectionChance = randdefchance;


            //** Horse Missile Properties (Shorter range than vanilla)
            float prevhorsemissilerange = agentDrivenProperties.AiRangedHorsebackMissileRange;
            float horsemissilerange = .25f + (.3f*efflvl);
            agentDrivenProperties.AiRangedHorsebackMissileRange = horsemissilerange;

            //** Horse Melee Properties (Shorter charge target distance than vanilla)
            float prevhorsechargedist = agentDrivenProperties.AiChargeHorsebackTargetDistFactor;
            float horsechargedist = 1.5f * (2.5f - mellvl);
            agentDrivenProperties.AiChargeHorsebackTargetDistFactor = horsechargedist;

            //** Shot Errors
            float prevrangerhorerror = agentDrivenProperties.AiRangerHorizontalErrorMultiplier;
            float prevrangerleadmin = agentDrivenProperties.AiRangerLeadErrorMin;
            float prevrangerleadmax = agentDrivenProperties.AiRangerLeadErrorMax;
            float prevshooterror = agentDrivenProperties.AiShooterError;

            //float rangerhorerror = invefflvl * 0.06981317f; //  {y = (1-x)*(2pi/90)} (less accurate than vanilla)
            float rangerleadmin = -.18f * invefflvl; // y = -.15(1-x) (more accurate than vanilla)
            float rangerleadmax = .18f * invefflvl;  // y = .15(1-x)  (less accurate than vanilla)
            float shooterror = .01f - (.005f * efflvl); // y = .01 - .005x (vanilla is a flat .008 , now ranges from .01 to .005)

            //agentDrivenProperties.AiRangerHorizontalErrorMultiplier = rangerhorerror;
            agentDrivenProperties.AiRangerLeadErrorMin = rangerleadmin;
            agentDrivenProperties.AiRangerLeadErrorMax = rangerleadmax;
            agentDrivenProperties.AiShooterError = shooterror;

            //** Movement Penalties
            float v = agent.MovementVelocity.Length;
            //float prevmaxmoveaccpen = agentDrivenProperties.WeaponMaxMovementAccuracyPenalty;
            float prevmaxmoveunstpen = agentDrivenProperties.WeaponMaxUnsteadyAccuracyPenalty;
            float prevrelmovepen = agentDrivenProperties.ReloadMovementPenaltyFactor;

            //float maxmoveaccpen = (efflvl - 1f) * (-.05f*(efflvl + v)) * (.2f*v); // y = (x-1) * -.05(x+v) * .2v
            float maxmoveunstpen = (efflvl - 1f) * (-.025f * (efflvl + v)) * (.2f * v); // y = (x-1) * -.025(x+v) * .2v
            float relmovepen = invefflvl ; // y = 1-x ... vanilla : constant 1

            //agentDrivenProperties.WeaponMaxMovementAccuracyPenalty = maxmoveaccpen;
            agentDrivenProperties.WeaponMaxUnsteadyAccuracyPenalty = maxmoveunstpen;
            agentDrivenProperties.ReloadMovementPenaltyFactor = relmovepen;

            //** Rotation Penalties
            float prevweaprotaccpen = agentDrivenProperties.WeaponRotationalAccuracyPenaltyInRadians;
            float weaprotaccpen = .12f * invefflvl; // y = .12(1-x) ... less than vanilla ?
            agentDrivenProperties.WeaponRotationalAccuracyPenaltyInRadians = weaprotaccpen;

            //** Throwable specific changes
            if (equippedItem.RelevantSkill != WeaponComponentData.GetRelevantSkillFromWeaponClass(WeaponClass.Bow)
                && equippedItem.RelevantSkill != WeaponComponentData.GetRelevantSkillFromWeaponClass(WeaponClass.Crossbow))
            {
                shooterror *= .4f; // Make throwables much more accurate since they're more limited
                horsemissilerange *= .6f; // Make mounted throwers fire from closer distance
            }

            if (comma_held)
            {
                Console.Write("Hello");
            }
        }
    }
}
