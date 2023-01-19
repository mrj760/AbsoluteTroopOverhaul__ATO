using HarmonyLib;
using System.Collections.Generic;
using System;
using TaleWorlds.CampaignSystem;
using TaleWorlds.Core;
using TaleWorlds.Library;
using TaleWorlds.MountAndBlade;

namespace std_troops
{
    public class Fix : MBSubModuleBase
    {
        protected override void OnSubModuleLoad()
        {
            // apply harmony patches
            Harmony harmony = new Harmony("std_troops");
            harmony.PatchAll();
        }

        private static bool PatchesApplied = false;

        //public override void OnGameInitializationFinished(Game game)
        //{
        //    base.OnGameInitializationFinished(game);

        //    if (!(game.GameType is Campaign) || Fix.PatchesApplied)
        //    {
        //        return;
        //    }

        //    var harmony = new Harmony("std_troops");

        //    var assembly = typeof(Fix).Assembly;

        //    var types = AccessTools.GetTypesFromAssembly(assembly);

        //    var failedPatches = new List<string>();

        //    foreach (var type in types)
        //    {
        //        try
        //        {
        //            new PatchClassProcessor(harmony, type).Patch();
        //        }
        //        catch (HarmonyException)
        //        {
        //            failedPatches.Add(type.Name);
        //            Console.WriteLine(type.Name);
        //        }
        //    }

        //    Fix.PatchesApplied = true;
        //}
    }
}
