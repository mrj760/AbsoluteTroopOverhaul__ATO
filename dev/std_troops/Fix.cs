using HarmonyLib;
using System.Collections.Generic;
using System;
using TaleWorlds.CampaignSystem;
using TaleWorlds.Core;
using TaleWorlds.Library;
using TaleWorlds.MountAndBlade;
using System.Reflection;

namespace ato
{
    public class Fix : MBSubModuleBase
    {
        protected override void OnSubModuleLoad()
        {
            // apply harmony patches
            Harmony harmony = new Harmony("ato");
            harmony.PatchAll();
        }

    }
}
