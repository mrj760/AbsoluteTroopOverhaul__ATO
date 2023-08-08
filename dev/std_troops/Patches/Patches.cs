using HarmonyLib;
using System;
using System.Linq;
using TaleWorlds.CampaignSystem;
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
            BasicCharacterObject character, bool randomEquipmentModifier,
            bool isCivilianEquipment = false, int seed = -1)
        {
            var equipment = new Equipment(isCivilianEquipment);
            var list = character.AllEquipments.Where((Equipment eq)
                => eq.IsCivilian == isCivilianEquipment && !eq.IsEmpty()).ToList();
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

                var itemModifier = equipment[i].Item?.ItemComponent?.ItemModifierGroup;
                if (itemModifier != null)
                {
                    equipment[i].SetModifier(itemModifier.GetRandomItemModifierLootScoreBased());
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
        public static void AddHorseBackToInventoryPatch(CharacterObject upgradeFromTroop,
            CharacterObject upgradeToTroop, int number)
        {
            if (!upgradeFromTroop.HasMount() || !upgradeToTroop.HasMount()
                || !upgradeToTroop.UpgradeRequiresItemFromCategory.IsAnimal)
                return;

            var horse = upgradeFromTroop.Equipment.Horse.Item;
            if (horse.Equals(upgradeToTroop.Equipment.Horse.Item))
                return;

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

    [HarmonyPatch]
    public class ReduceAIMaxLevel
    {

        /* Set the Maximum Skill-Level for calculation to 260 instead of 350. This should make all AI stronger. */
        [HarmonyPrefix]
        [HarmonyPatch(typeof(AgentStatCalculateModel), "CalculateAILevel")]
        public static bool OverrideAILevelCalculation(ref AgentStatCalculateModel __instance,
            ref float __result, Agent agent, int relevantSkillLevel)
        {
            var diffmod = __instance.GetDifficultyModifier();
            __result = MBMath.ClampFloat((float)relevantSkillLevel / 260f * diffmod, 0.01f, diffmod);
            return false;
        }

    }
}


