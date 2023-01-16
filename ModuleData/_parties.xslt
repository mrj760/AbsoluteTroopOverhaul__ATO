<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output omit-xml-declaration="yes"/>
    
    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="main_hero_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.main_hero" />
             </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="crazyman_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="20" max_value="20" troop="NPCCharacter.battanian_volunteer" />
                <PartyTemplateStack min_value="10" max_value="10" troop="NPCCharacter.vlandian_sharpshooter" />
                <PartyTemplateStack min_value="0" max_value="0" troop="NPCCharacter.aserai_tribal_horseman" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="mixture_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="30" max_value="80" troop="NPCCharacter.guard" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="looters_quest_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="15" troop="NPCCharacter.looter" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="looters_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="36" troop="NPCCharacter.looter" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="sea_raiders_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="18" troop="NPCCharacter.sea_raiders_bandit" />
                <PartyTemplateStack min_value="0" max_value="6" troop="NPCCharacter.sea_raiders_raider" />
                <PartyTemplateStack min_value="0" max_value="3" troop="NPCCharacter.sea_raiders_chief" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="sea_raiders_boss_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="4" troop="NPCCharacter.sea_raiders_raider" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sea_raiders_chief" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sea_raiders_boss" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="mountain_bandits_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="18" troop="NPCCharacter.mountain_bandits_bandit" />
                <PartyTemplateStack min_value="0" max_value="6" troop="NPCCharacter.mountain_bandits_raider" />
                <PartyTemplateStack min_value="0" max_value="3" troop="NPCCharacter.mountain_bandits_chief" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="mountain_bandits_boss_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="4" troop="NPCCharacter.mountain_bandits_raider" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.mountain_bandits_chief" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.mountain_bandits_boss" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="forest_bandits_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="18" troop="NPCCharacter.forest_bandits_bandit" />
                <PartyTemplateStack min_value="0" max_value="6" troop="NPCCharacter.forest_bandits_raider" />
                <PartyTemplateStack min_value="0" max_value="3" troop="NPCCharacter.forest_bandits_chief" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="forest_bandits_boss_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="4" troop="NPCCharacter.forest_bandits_raider" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.forest_bandits_chief" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.forest_bandits_boss" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="desert_bandits_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="18" troop="NPCCharacter.desert_bandits_bandit" />
                <PartyTemplateStack min_value="0" max_value="6" troop="NPCCharacter.desert_bandits_raider" />
                <PartyTemplateStack min_value="0" max_value="3" troop="NPCCharacter.desert_bandits_chief" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="desert_bandits_boss_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="4" troop="NPCCharacter.desert_bandits_raider" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.desert_bandits_chief" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.desert_bandits_boss" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="steppe_bandits_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="18" troop="NPCCharacter.steppe_bandits_bandit" />
                <PartyTemplateStack min_value="0" max_value="6" troop="NPCCharacter.steppe_bandits_raider" />
                <PartyTemplateStack min_value="0" max_value="3" troop="NPCCharacter.steppe_bandits_chief" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="steppe_bandits_boss_party_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="2" max_value="4" troop="NPCCharacter.steppe_bandits_raider" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.steppe_bandits_chief" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.steppe_bandits_boss" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="siege_party_template"]' />
    <xsl:template match='MBPartyTemplate[@id="routed_template"]'  />
    <xsl:template match='MBPartyTemplate[@id="villager_empire_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="30" troop="NPCCharacter.villager_empire" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="villager_aserai_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="30" troop="NPCCharacter.villager_aserai" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="villager_sturgia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="30" troop="NPCCharacter.villager_sturgia" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="villager_vlandia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="30" troop="NPCCharacter.villager_vlandia" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="villager_battania_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="30" troop="NPCCharacter.villager_battania" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="villager_khuzait_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="15" max_value="30" troop="NPCCharacter.villager_khuzait" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="rebels_empire_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_recruit" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="rebels_aserai_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_tribesman" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="rebels_sturgia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sturgian_recruit" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="rebels_vlandia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_recruit" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="rebels_battania_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.battanian_volunteer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="rebels_khuzait_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_nomad" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    
    
    <xsl:template match='MBPartyTemplate[@id="caravan_template_aserai"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_aserai" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.caravan_guard_aserai" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.veteran_caravan_guard_aserai" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="caravan_template_battania"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack  min_value="8" max_value="8" troop="NPCCharacter.armed_trader_battania" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.caravan_guard_battania" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.veteran_caravan_guard_battania" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="caravan_template_empire"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack  min_value="8" max_value="8" troop="NPCCharacter.armed_trader_empire" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.caravan_guard_empire" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.veteran_caravan_guard_empire" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="caravan_template_khuzait"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack  min_value="8" max_value="8" troop="NPCCharacter.armed_trader_khuzait" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.caravan_guard_khuzait" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.veteran_caravan_guard_khuzait" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="caravan_template_sturgia"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack  min_value="8" max_value="8" troop="NPCCharacter.armed_trader_sturgia" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.caravan_guard_sturgia" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.veteran_caravan_guard_sturgia" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="caravan_template_vlandia"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack  min_value="8" max_value="8" troop="NPCCharacter.armed_trader_vlandia" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.caravan_guard_vlandia" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.veteran_caravan_guard_vlandia" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <!--ELITE CARAVAN TEMPLATES-->
    <xsl:template match='MBPartyTemplate[@id="elite_caravan_template_aserai"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_aserai" />
                <PartyTemplateStack min_value="7" max_value="7" troop="NPCCharacter.caravan_guard_aserai" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.veteran_caravan_guard_aserai" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.caravan_master_aserai" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="elite_caravan_template_battania"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_battania" />
                <PartyTemplateStack min_value="7" max_value="7" troop="NPCCharacter.caravan_guard_battania" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.veteran_caravan_guard_battania" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.caravan_master_battania" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="elite_caravan_template_empire"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_empire" />
                <PartyTemplateStack min_value="7" max_value="7" troop="NPCCharacter.caravan_guard_empire" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.veteran_caravan_guard_empire" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.caravan_master_empire" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="elite_caravan_template_khuzait"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_khuzait" />
                <PartyTemplateStack min_value="7" max_value="7" troop="NPCCharacter.caravan_guard_khuzait" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.veteran_caravan_guard_khuzait" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.caravan_master_khuzait" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="elite_caravan_template_sturgia"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_sturgia" />
                <PartyTemplateStack min_value="7" max_value="7" troop="NPCCharacter.caravan_guard_sturgia" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.veteran_caravan_guard_sturgia" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.caravan_master_sturgia" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="elite_caravan_template_vlandia"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.armed_trader_vlandia" />
                <PartyTemplateStack min_value="7" max_value="7" troop="NPCCharacter.caravan_guard_vlandia" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.veteran_caravan_guard_vlandia" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.caravan_master_vlandia" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match='MBPartyTemplate[@id="militia_empire_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_militia_spearman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_militia_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="militia_sturgia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sturgian_militia_spearman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sturgian_militia_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="militia_aserai_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_militia_spearman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_militia_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="militia_vlandia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_militia_spearman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_militia_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="militia_battania_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.battanian_militia_spearman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.battanian_militia_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="militia_khuzait_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_militia_spearman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_militia_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_empire_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.imperial_recruit" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.imperial_infantryman" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.imperial_equite" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_heavy_horseman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_cataphract" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_archer" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_trained_infantryman" />
                <PartyTemplateStack min_value="1" max_value="2" troop="NPCCharacter.imperial_veteran_infantryman" />
                <PartyTemplateStack min_value="1" max_value="2" troop="NPCCharacter.imperial_menavliaton" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_legionary" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_elite_menavliaton" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_infantryman" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_archer" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_trained_archer" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_archer" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_trained_archer" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.imperial_crossbowman" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_sergeant_crossbowman" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_sturgia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.sturgian_recruit" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.sturgian_warrior" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.sturgian_brigand" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.sturgian_hardened_brigand" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sturgian_horse_raider" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.sturgian_spearman" />
                <PartyTemplateStack min_value="3" max_value="3" troop="NPCCharacter.sturgian_veteran_warrior" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.sturgian_shock_troop" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.sturgian_hunter" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.sturgian_archer" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.sturgian_veteran_bowman" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_aserai_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.aserai_tribesman" />
                <PartyTemplateStack min_value="6" max_value="6" troop="NPCCharacter.aserai_mameluke_axeman" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.aserai_footman" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.aserai_skirmisher" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.aserai_tribal_horseman" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.aserai_mameluke_regular" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_mameluke_cavalry" />
                <PartyTemplateStack min_value="3" max_value="3" troop="NPCCharacter.aserai_infantry" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_mameluke_guard" />
                <PartyTemplateStack min_value="3" max_value="3" troop="NPCCharacter.aserai_veteran_infantry" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.mamluke_palace_guard" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.aserai_archer" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_master_archer" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_vlandia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.vlandian_recruit" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.vlandian_gallant" />
                <PartyTemplateStack min_value="4" max_value="5" troop="NPCCharacter.vlandian_light_cavalry" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.vlandian_champion" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_vanguard" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.vlandian_footman" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.vlandian_infantry" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.vlandian_voulgier" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_sergeant" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_billman" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.vlandian_crossbowman" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.vlandian_sharpshooter" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_battania_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.battanian_volunteer" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.battanian_clanwarrior" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.battanian_trained_warrior" /> 
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.battanian_picked_warrior" />
                <PartyTemplateStack min_value="3" max_value="3" troop="NPCCharacter.battanian_oathsworn" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.battanian_falxman" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.battanian_highborn_warrior" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.battanian_hero" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.battanian_fian" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.battanian_scout" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.battanian_horseman" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_khuzait_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.khuzait_nomad" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.khuzait_tribal_warrior" />
                <PartyTemplateStack min_value="3" max_value="3" troop="NPCCharacter.khuzait_raider" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.khuzait_lancer" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_heavy_lancer" />
                <PartyTemplateStack min_value="2" max_value="3" troop="NPCCharacter.khuzait_horse_archer" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_heavy_horse_archer" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.khuzait_hunter" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.khuzait_archer" />
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_marksman" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.khuzait_spearman" />
                <PartyTemplateStack min_value="2" max_value="2" troop="NPCCharacter.khuzait_spear_infantry" />
                <PartyTemplateStack min_value="1" max_value="2" troop="NPCCharacter.khuzait_darkhan" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <!-- party templates for mercenary minor factions (4) -->
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_mercenary_aserai_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.ghilman_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.ghilman_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.ghilman_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_mercenary_empire_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.legion_of_the_betrayed_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.legion_of_the_betrayed_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.legion_of_the_betrayed_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_mercenary_sturgia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.skolderbrotva_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.skolderbrotva_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.skolderbrotva_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_mercenary_vlandia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.company_of_the_boar_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.company_of_the_boar_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.company_of_the_boar_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>  
    
    <!-- party templates for outlaw minor factions (8) -->
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_aserai_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.beni_zilal_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.beni_zilal_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.beni_zilal_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_battania_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.wolfskins_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.wolfskins_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.wolfskins_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_empire_e_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.embers_of_flame_tier_1" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.embers_of_flame_tier_2" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.embers_of_flame_tier_3" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_empire_s_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.guardians_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.guardians_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.guardians_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_empire_w_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.hidden_hand_tier_1" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.hidden_hand_tier_2" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.hidden_hand_tier_3" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_sturgia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.lakepike_tier_1" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.lakepike_tier_2" />
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.lakepike_tier_3" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_outlaw_vlandia_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.brotherhood_of_woods_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.brotherhood_of_woods_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.brotherhood_of_woods_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
    <!-- party templates for nomad minor factions (4) -->
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_jawwal_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.jawwal_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.jawwal_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.jawwal_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_karakhuzaits_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.karakhuzaits_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.karakhuzaits_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.karakhuzaits_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_forest_people_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.forest_people_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.forest_people_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.forest_people_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_eleftheroi_template"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="4" max_value="4" troop="NPCCharacter.eleftheroi_tier_3" />
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.eleftheroi_tier_2" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.eleftheroi_tier_1" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <!-- party template for caravan ambush issue -->
    <xsl:template match='MBPartyTemplate[@id="kingdom_hero_party_caravan_ambushers"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="8" max_value="8" troop="NPCCharacter.mounted_ransacker" />
                <PartyTemplateStack min_value="16" max_value="16" troop="NPCCharacter.mounted_pillager" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <!-- Vassal Reward Troops-->
    <xsl:template match='MBPartyTemplate[@id="vassal_reward_troops_empire"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.imperial_cataphract" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.imperial_heavy_horseman" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="vassal_reward_troops_aserai"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.aserai_veteran_faris" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.aserai_faris" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="vassal_reward_troops_sturgia"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.druzhinnik" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.varyag_veteran" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="vassal_reward_troops_battania"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.battanian_fian" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.battanian_hero" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="vassal_reward_troops_vlandia"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.vlandian_champion" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.vlandian_knight" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='MBPartyTemplate[@id="vassal_reward_troops_khuzait"]' >
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <stacks>
                <PartyTemplateStack min_value="1" max_value="1" troop="NPCCharacter.khuzait_kheshig" />
                <PartyTemplateStack min_value="5" max_value="5" troop="NPCCharacter.khuzait_torguud" />
            </stacks>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>