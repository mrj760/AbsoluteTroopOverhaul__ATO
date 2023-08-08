using HarmonyLib;
using TaleWorlds.MountAndBlade;

namespace ato
{
    public class Fix : MBSubModuleBase
    {
        protected override void OnSubModuleLoad()
        {
            // apply harmony patches
            var harmony = new Harmony("ato");
            harmony.PatchAll();
            //base.OnSubModuleLoad();
        }

    }
}
