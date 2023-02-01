using HarmonyLib;
using JetBrains.Annotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.ExceptionServices;
using TaleWorlds.CampaignSystem;
using TaleWorlds.CampaignSystem.CampaignBehaviors;
using TaleWorlds.CampaignSystem.Party;
using TaleWorlds.Core;
using TaleWorlds.Library;
using TaleWorlds.MountAndBlade;

namespace ato.Patches
{

    [HarmonyPatch]
    public class ChooseFullRosterOnSpawn
    {
        [HarmonyPrefix]
        [HarmonyPatch(typeof(Equipment), nameof(Equipment.GetRandomEquipmentElements))]
        public static bool AssignWholeRoster(ref Equipment __result,
            BasicCharacterObject character, bool randomEquipmentModifier, bool isCivilianEquipment = false, int seed = -1)
        {
            var equipment = new Equipment(isCivilianEquipment);
            var list = character.AllEquipments.Where((Equipment eq) => eq.IsCivilian == isCivilianEquipment && !eq.IsEmpty()).ToList();
            if (list.IsEmpty())
            {
                __result = equipment;
                return false;
            }

            var count = list.Count;
            var random = new Random(seed);
            var weaponSet = MBRandom.RandomInt(count);
            for (var i = 0; i < 12; i++)
            {
                equipment[i] = list[weaponSet].GetEquipmentFromSlot((EquipmentIndex)i);

                if (!randomEquipmentModifier)
                    continue;

                var itemModifier = equipment[i].Item?.ItemComponent?.ItemModifierGroup?.GetRandomItemModifierLootScoreBased();
                if (itemModifier != null)
                {
                    equipment[i].SetModifier(itemModifier);
                }
            }

            __result = equipment;
            return false;
        }
    }

    // This patch looks weird bc I was experimenting with the structure
    [HarmonyPatch]
    public class Hold
    {
        [HarmonyPatch(typeof(CampaignEvents))]
        public class GiveHorseBackOnUpgrade
        {
            [HarmonyPostfix]
            [HarmonyPatch("OnPlayerUpgradedTroops")]
            public static void AddHorseBackToInventoryPatch(CharacterObject upgradeFromTroop, CharacterObject upgradeToTroop, int number)
            {
                // if both troop versions have a horse
                if (!upgradeFromTroop.HasMount() || !upgradeToTroop.HasMount())
                    return;

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
        //static bool commaheld = false;

        //static float maxdef = 0f;

        //[HarmonyPostfix]
        //[HarmonyPatch(typeof(MBSubModuleBase), "OnApplicationTick")]
        //public static void CheckButton(float dt)
        //{
        //    commaheld = Input.IsKeyDown(InputKey.Comma);
        //}

        /* Set the Maximum Skill-Level for calculation to 260 instead of 350. This should make all AI stronger. */
        [HarmonyPrefix]
        [HarmonyPatch(typeof(AgentStatCalculateModel), "CalculateAILevel")]
        public static bool OverrideAILevelCalculation(ref AgentStatCalculateModel __instance, ref float __result,
            Agent agent, int relevantSkillLevel)
        {
            var diffmod = __instance.GetDifficultyModifier();
            __result = MBMath.ClampFloat((float)relevantSkillLevel / 260f * diffmod, 0.01f, diffmod);
            return false;
        }

        private static float CalcAILevel(float skill, float diffmod)
        {
            return MBMath.ClampFloat(skill / 260f * diffmod, 0.01f, diffmod);
        }

        /* Adjust various in-battle AI properties. */
        [HarmonyPostfix]
        [HarmonyPatch(typeof(AgentStatCalculateModel), "SetAiRelatedProperties")]
        public static void SetAiProperties(
            AgentStatCalculateModel __instance,
            Agent agent, ref AgentDrivenProperties agentDrivenProperties,
            WeaponComponentData equippedItem, WeaponComponentData secondaryItem)
        {

            if (Mission.Current == null // not a mission
                || (!(Mission.Current.IsFieldBattle && !Mission.Current.IsSiegeBattle)) // not a field battle and not a siege battle
                || agent.IsPlayerControlled || !agent.IsAIControlled) // or working with player character
                return;
            //string agentname = agent.Character.Name.ToString(); // Debug info

            //** Get skill values
            var GetMeleeSkill = typeof(AgentStatCalculateModel).GetMethod("GetMeleeSkill", BindingFlags.NonPublic | BindingFlags.Instance);
            var _ = GetMeleeSkill?.DeclaringType?.GetMethod("GetMeleeSkill");
            var eqitemskill = equippedItem == null ? DefaultSkills.Athletics : equippedItem.RelevantSkill;
            var secitemskill = secondaryItem?.RelevantSkill;
            // ReSharper disable once PossibleNullReferenceException
            var melskill = (int)GetMeleeSkill.Invoke(__instance, new object[] { agent, equippedItem, secondaryItem });
            var effskill = __instance.GetEffectiveSkill(agent.Character, agent.Origin, agent.Formation, eqitemskill);


            //** Translate skill values to usable numbers for AI calculation
            var diffmod = __instance.GetDifficultyModifier();
            var mellvl = CalcAILevel(melskill, diffmod);
            var invmellvl = MBMath.ClampFloat(1f - mellvl, 0.01f, .9999f);
            var efflvl = CalcAILevel(effskill, diffmod);
            var invefflvl = MBMath.ClampFloat(1f - efflvl, 0.01f, .9999f);
            var def = agent.Defensiveness;


            //** Movement Penalties
            var v = agent.MovementVelocity.Length;
            //float prevmaxmoveunstpen = agentDrivenProperties.WeaponMaxUnsteadyAccuracyPenalty;
            //float prevrelmovepen = agentDrivenProperties.ReloadMovementPenaltyFactor;

            var maxmoveunstpen = (efflvl - 1f) * (-.025f * (efflvl + v)) * (.2f * v); // y = (x-1) * -.025(x+v) * .2v

            agentDrivenProperties.WeaponMaxUnsteadyAccuracyPenalty = maxmoveunstpen;
            agentDrivenProperties.ReloadMovementPenaltyFactor = invefflvl;


            //** Rotation Penalty
            //float prevweaprotaccpen = agentDrivenProperties.WeaponRotationalAccuracyPenaltyInRadians;
            var weaprotaccpen = .12f * invefflvl; // y = .12(1-x) ... less than vanilla ?
            agentDrivenProperties.WeaponRotationalAccuracyPenaltyInRadians = weaprotaccpen;




            //** Defense Probabilities (I think `def` will always be 0, 1, or 2, with 2 being the most defensive)
            //float prevshieldmissile = agentDrivenProperties.AiUseShieldAgainstEnemyMissileProbability;
            //float prevranddefchance = agentDrivenProperties.AiRandomizedDefendDirectionChance;
            float shieldmissilechance;
            float randdefchance;
            float z, m;
            if (def >= 1.9f)
            {
                // y = m * ln(x + z)
                m = .8f;
                z = 1.68f;
                shieldmissilechance = MBMath.ClampFloat(m * MathF.Log(mellvl + z), 0f, .92f);
                // y = 1.2 - ln(x + z)
                z = 2.265f;
                randdefchance = MBMath.ClampFloat(1.2f - MathF.Log(mellvl + z), .08f, 1f);
            }
            else if (def >= .9f)
            {
                // y = m * ln(x + z)
                m = .6f;
                z = 1.68f;
                shieldmissilechance = MBMath.ClampFloat(m * MathF.Log(mellvl + z), 0f, .92f);
                // y = 1.2 - ln(x + z)
                z = 2.33f;
                randdefchance = MBMath.ClampFloat(1.2f - MathF.Log(mellvl + z), .08f, 1f);
            }
            else // 0 `def` seems to be most common
            {
                // y = m * ln(x + z)
                m = .4f;
                z = 1.68f;
                shieldmissilechance = MBMath.ClampFloat(m * MathF.Log(mellvl + z), 0f, .92f);
                // y = 1.2 - ln(x + z)
                z = 2.4f;
                randdefchance = MBMath.ClampFloat(1.2f - MathF.Log(mellvl + z), .08f, 1f);
            }
            agentDrivenProperties.AiUseShieldAgainstEnemyMissileProbability = shieldmissilechance;
            agentDrivenProperties.AiRandomizedDefendDirectionChance = randdefchance;


            //** Shooting Properties
            //float prevrangerleadmin = agentDrivenProperties.AiRangerLeadErrorMin;
            ////float prevrangerleadmax = agentDrivenProperties.AiRangerLeadErrorMax;
            //float prevshooterror = agentDrivenProperties.AiShooterError;

            var rangerleadmin = -.18f * invefflvl; // y = -.15(1-x) (more accurate than vanilla)
            //float rangerleadmax = .18f * invefflvl;  // y = .15(1-x)  (slightly less accurate than vanilla)
            var shooterror = .01f - (.005f * efflvl); // y = .01 - .005x (vanilla is a flat .008 , now ranges from .01 to .005)

            agentDrivenProperties.AiRangerLeadErrorMin = rangerleadmin;
            //agentDrivenProperties.AiRangerLeadErrorMax = rangerleadmax;
            agentDrivenProperties.AiShooterError = shooterror;

            //agentDrivenProperties.WeaponBestAccuracyWaitTime = 1.33f;
            agentDrivenProperties.WeaponBestAccuracyWaitTime = MathF.Log(1-(.396f*efflvl)) + 1.5f;


            //** Mounted units

            //float prevhorsemissilerange = agentDrivenProperties.AiRangedHorsebackMissileRange;
            //float prevhorsechargedist = agentDrivenProperties.AiChargeHorsebackTargetDistFactor;

            //float horsemissilerange = .25f + (.3f * efflvl); // (Shorter range than vanilla)
            //float horsechargedist = 1.5f * (2.5f - mellvl); // (Shorter charge target distance than vanilla)

            //agentDrivenProperties.AiRangedHorsebackMissileRange = horsemissilerange;
            //agentDrivenProperties.AiChargeHorsebackTargetDistFactor = horsechargedist;

            if (agent.HasMount)
            {
                if (eqitemskill == DefaultSkills.Throwing)
                {
                    agentDrivenProperties.AiShooterError *= .26f; // Make mounted throwing troops more accurate
                    // agentDrivenProperties.AiRangedHorsebackMissileRange *= .6f; // Make mounted throwing troops fire from closer distance
                }
                else
                    agentDrivenProperties.AiShooterError *= .33f; // Make mounted ranged troops more accurate

            }
            else if (eqitemskill == DefaultSkills.Throwing)
            {
                agentDrivenProperties.AiShooterError *= .5f; // Make throwing foot troops more accurate
                agentDrivenProperties.WeaponBestAccuracyWaitTime *= .5f;
            }




            //** Checking conditions to see if formation should be changed
            /**
            //if (!Mission.Current.IsFieldBattle)
            //    goto SkipFormationChangeCheck;

            //int totalammo =
            //    agent.Equipment.GetAmmoAmount(WeaponClass.Javelin)
            //    + agent.Equipment.GetAmmoAmount(WeaponClass.ThrowingAxe)
            //    + agent.Equipment.GetAmmoAmount(WeaponClass.ThrowingKnife)
            //    + agent.Equipment.GetAmmoAmount(WeaponClass.Arrow)
            //    + agent.Equipment.GetAmmoAmount(WeaponClass.Bolt);

            //if (totalammo == 0)
            //{
            //    if (agent.Formation == null || agent.Formation.InitialClass == FormationClass.Unset)
            //    {
            //        if (agent.Team.GetFormation(FormationClass.Infantry) == null)
            //            goto SkipFormationChangeCheck;
            //        agent.Formation = agent.Team.GetFormation(FormationClass.Infantry);
            //    }
            //    else if (agent.Formation.InitialClass == FormationClass.HorseArcher)
            //    {
            //        if (agent.Team.GetFormation(FormationClass.Cavalry) != null)
            //            agent.Formation = agent.Team.GetFormation(FormationClass.Cavalry);
            //    }
            //    else if (agent.Formation.InitialClass == FormationClass.Ranged)
            //    {
            //        if (agent.Team.GetFormation(FormationClass.Infantry) != null)
            //            agent.Formation = agent.Team.GetFormation(FormationClass.Infantry);
            //    }
            //    else
            //        goto SkipFormationChangeCheck;
            //}
            //else
            //    goto SkipFormationChangeCheck;

            ////agent.SetShouldCatchUpWithFormation(true);

            //SkipFormationChangeCheck:
            //return;

            //if (commaheld)
            //{
            //    Console.Write("Hello");
            //}*/
        }
    }
}


