<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" />

    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>


    <!-- ASERAI TROOPS -->
    <!-- -Athletics, +Riding -->
    <xsl:template match='NPCCharacter[@id="aserai_recruit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="18" />
                <skill id="Riding" value="12" />
                <skill id="OneHanded" value="30" />
                <skill id="TwoHanded" value="10" />
                <skill id="Polearm" value="30" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_tribesman" />
                <upgrade_target id="NPCCharacter.aserai_mameluke_soldier" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.aserai_civil_e_hscarf" />
                    <equipment slot="Body" id="Item.aserai_civil_e" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Item1" id="Item.peasant_pitchfork_1_t1" />
                    <equipment slot="Head" id="Item.aserai_civil_c_head" />
                    <equipment slot="Body" id="Item.aserai_civil_c" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_tribesman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="37" />
                <skill id="Riding" value="28" />
                <skill id="OneHanded" value="67" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_skirmisher" />
                <upgrade_target id="NPCCharacter.aserai_mameluke_axeman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.desert_throwing_knife" />
                    <equipment slot="Item2" id="Item.bound_desert_round_shield" />
                    <equipment slot="Item3" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.reinforced_suede_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <!-- <equipment slot="Cape" id="Item.stitched_leather_shoulders" /> -->
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.desert_throwing_knife" />
                    <equipment slot="Item2" id="Item.bound_desert_round_shield" />
                    <equipment slot="Item3" id="Item.aserai_mace_1_t2" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.reinforced_suede_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <!-- <equipment slot="Cape" id="Item.stitched_leather_shoulders" /> -->
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_footman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Aserai Mamluke Footman</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="63" />
                <skill id="Riding" value="57" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_infantry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_mace_3_t3" />
                    <equipment slot="Item1" id="Item.desert_oval_shield" />
                    <equipment slot="Item2" id="Item.southern_spear_3_t3" />
                    <equipment slot="Head" id="Item.loose_wrapped_desert_helmet" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Cape" id="Item.reinforced_suede_shoulders" />
                    <!-- <equipment slot="Cape" id="Item.stitched_leather_shoulders" /> -->
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_skirmisher"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="63" />
                <skill id="Riding" value="57" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="100" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item1" id="Item.highland_ranger_bow" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Head" id="Item.desert_helmet" />
                    <equipment slot="Cape" id="Item.stitched_leather_shoulders" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item1" id="Item.highland_ranger_bow" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Head" id="Item.desert_helmet" />
                    <equipment slot="Cape" id="Item.reinforced_suede_shoulders" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item1" id="Item.highland_ranger_bow" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Head" id="Item.desert_helmet" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="85" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="130" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_master_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.steppe_arrows" />
                    <equipment slot="Item3" id="Item.aserai_mace_3_t3" />
                    <equipment slot="Head" id="Item.pointed_skullcap_over_cloth_headwrap" />
                    <equipment slot="Body" id="Item.aserai_armor_02_b" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.a_aserai_scale_b_shoulder_d" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_master_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="110" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="160" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.tribal_bow" />
                    <equipment slot="Item1" id="Item.heavy_steppe_arrows" />
                    <equipment slot="Item2" id="Item.heavy_steppe_arrows" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.pointed_skullcap_over_mail" />
                    <equipment slot="Body" id="Item.leather_strips_over_padded_robe" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Cape" id="Item.a_aserai_scale_b_shoulder_d" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_infantry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Aserai Mamluke Infantry</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="85" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_veteran_infantry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Item1" id="Item.ornate_adarga" />
                    <equipment slot="Item2" id="Item.southern_spear_3_t3" />
                    <equipment slot="Head" id="Item.desert_helmet_with_mail" />
                    <equipment slot="Body" id="Item.leather_strips_over_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.a_aserai_scale_b_shoulder_d" />
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_veteran_infantry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Aserai Mamluke Veteran</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="110" />
                <skill id="OneHanded" value="160" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Item1" id="Item.steel_round_shield" />
                    <equipment slot="Item2" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Head" id="Item.closed_desert_helmet_with_mail" />
                    <equipment slot="Body" id="Item.desert_lamellar" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Cape" id="Item.stitched_leather_shoulders" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_mameluke_soldier"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="37" />
                <skill id="Riding" value="28" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_mameluke_regular" />
                <upgrade_target id="NPCCharacter.aserai_footman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.desert_round_shield" />
                    <equipment slot="Item2" id="Item.aserai_axe_2_t2" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Body" id="Item.aserai_horseman_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.desert_round_shield" />
                    <equipment slot="Item2" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Cape" id="Item.reinforced_suede_shoulders" />
                    <equipment slot="Body" id="Item.studded_leather_coat" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.desert_round_shield" />
                    <equipment slot="Item2" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_mameluke_regular"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="43" />
                <skill id="Riding" value="77" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_mameluke_cavalry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Item1" id="Item.large_adarga" />
                    <equipment slot="Item2" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Head" id="Item.loose_wrapped_desert_helmet" />
                    <equipment slot="Body" id="Item.ringed_desert_armor" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Cape" id="Item.reinforced_suede_shoulders" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Item1" id="Item.large_adarga" />
                    <equipment slot="Item2" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Head" id="Item.loose_wrapped_desert_helmet" />
                    <equipment slot="Body" id="Item.ringed_desert_armor" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                </EquipmentRoster>
                <equipment slot="Horse" id="Item.aserai_horse" />
                <equipment slot="HorseHarness" id="Item.stripped_leather_harness" />
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_mameluke_cavalry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="upgrade_requires">ItemCategory.war_horse</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="65" />
                <skill id="Riding" value="110" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="123" />
                <skill id="Bow" value="100" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_mameluke_heavy_cavalry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Item3" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Head" id="Item.desert_helmet_with_mail" />
                    <equipment slot="Body" id="Item.aserai_robe_c_chain" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <equipment slot="Horse" id="Item.t2_aserai_horse" />
                <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
                <EquipmentSet id="aserai_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_mameluke_heavy_cavalry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="140" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="150" />
                <skill id="Bow" value="130" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>

            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item2" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Item3" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Head" id="Item.emirs_helmet" />
                    <equipment slot="Body" id="Item.stitched_leather_over_mail" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <equipment slot="Horse" id="Item.t2_aserai_horse" />
                <equipment slot="HorseHarness" id="Item.chain_horse_harness" />
                <EquipmentSet id="aserai_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_mameluke_axeman"]'> <!-- Aserai Tribesman Guard -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Aserai Tribesman Guard</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="63" />
                <skill id="Riding" value="57" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="100" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_mameluke_guard" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.kaskara_2hsword_t3" />
                    <equipment slot="Item1" id="Item.desert_throwing_knife" />
                    <equipment slot="Item2" id="Item.desert_throwing_knife" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.ringed_desert_armor" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.kaskara_2hsword_t3" />
                    <equipment slot="Item1" id="Item.desert_throwing_knife" />
                    <equipment slot="Item2" id="Item.desert_throwing_knife" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.ringed_desert_armor" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Cape" id="Item.reinforced_suede_shoulders" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_mameluke_guard"]'> <!-- Aserai Tribesman Axe Bearer -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Aserai Tribesman Axe Bearer</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="85" />
                <skill id="OneHanded" value="60" />
                <skill id="TwoHanded" value="130" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.mamluke_palace_guard" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_2haxe_2_t4" />
                    <equipment slot="Item1" id="Item.southern_throwing_axe_1_t4" />
                    <equipment slot="Item2" id="Item.southern_throwing_axe_1_t4" />
                    <equipment slot="Head" id="Item.pointed_skullcap_with_mail" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Body" id="Item.aserai_armor_02" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_2haxe_1_t3" />
                    <equipment slot="Item1" id="Item.southern_throwing_axe_1_t4" />
                    <equipment slot="Item2" id="Item.southern_throwing_axe_1_t4" />
                    <equipment slot="Head" id="Item.pointed_skullcap_with_mail" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Body" id="Item.aserai_armor_02" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="mamluke_palace_guard"]'> <!-- Aserai Palace Guard -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Aserai Palace Guard</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="110" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="160" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_2haxe_3_t5" />
                    <equipment slot="Item1" id="Item.southern_throwing_axe_1_t4" />
                    <equipment slot="Item2" id="Item.southern_throwing_axe_1_t4" />
                    <equipment slot="Head" id="Item.desert_helmet_with_mail" />
                    <equipment slot="Cape" id="Item.a_aserai_scale_b_shoulder_d" />
                    <equipment slot="Body" id="Item.aserai_chain_plate_armor_a" />
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_youth"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="35" />
                <skill id="Riding" value="65" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_tribal_horseman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Item1" id="Item.adarga" />
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item1" id="Item.adarga" />
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item1" id="Item.adarga" />
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.aserai_horse" />
                <equipment slot="HorseHarness" id="Item.aseran_village_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_tribal_horseman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="64" />
                <skill id="Riding" value="101" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="70" />
                <skill id="Polearm" value="124" />
                <skill id="Bow" value="70" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_faris" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Item1" id="Item.bound_adarga" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.aserai_horseman_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.aserai_horseman_shoulder" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_mace_3_t3" />
                    <equipment slot="Item1" id="Item.bound_adarga" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.aserai_horseman_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.aserai_horseman_shoulder" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_mace_3_t3" />
                    <equipment slot="Item1" id="Item.bound_adarga" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.aserai_horseman_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.aserai_horseman_shoulder" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.aserai_horse" />
                <equipment slot="HorseHarness" id="Item.aseran_village_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_faris"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="94" />
                <skill id="Riding" value="126" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="154" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_veteran_faris" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item1" id="Item.bound_adarga" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.desert_helmet_with_mail" />
                    <equipment slot="Body" id="Item.leather_strips_over_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item1" id="Item.bound_adarga" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.desert_helmet_with_mail" />
                    <equipment slot="Body" id="Item.leather_strips_over_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.t2_aserai_horse" />
                <equipment slot="HorseHarness" id="Item.aseran_village_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_veteran_faris"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="170" />
                <skill id="OneHanded" value="170" />
                <skill id="TwoHanded" value="120" />
                <skill id="Polearm" value="190" />
                <skill id="Bow" value="120" />
                <skill id="Crossbow" value="120" />
                <skill id="Throwing" value="170" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_vanguard_faris" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.southern_spear_3_t4" />
                    <equipment slot="Item1" id="Item.studded_adarga" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_5_t4" />
                    <equipment slot="Head" id="Item.pointed_skullcap_with_mail" />
                    <equipment slot="Body" id="Item.southern_lamellar_armor" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Cape" id="Item.brass_scale_shoulders" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.t2_aserai_horse" />
                <equipment slot="HorseHarness" id="Item.half_mail_and_plate_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_vanguard_faris"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="240" />
                <skill id="OneHanded" value="220" />
                <skill id="TwoHanded" value="150" />
                <skill id="Polearm" value="240" />
                <skill id="Bow" value="150" />
                <skill id="Crossbow" value="150" />
                <skill id="Throwing" value="220" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Item1" id="Item.ornate_adarga" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head" id="Item.pointed_skullcap_over_mail_coif" />
                    <equipment slot="Cape" id="Item.desert_scale_shoulders" />
                    <equipment slot="Body" id="Item.desert_scale_armor" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Item1" id="Item.ornate_adarga" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head" id="Item.pointed_skullcap_over_mail_coif" />
                    <equipment slot="Cape" id="Item.desert_scale_shoulders" />
                    <equipment slot="Body" id="Item.desert_scale_armor" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_lance_1_t5" />
                    <equipment slot="Item1" id="Item.ornate_adarga" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head" id="Item.pointed_skullcap_over_mail_coif" />
                    <equipment slot="Cape" id="Item.desert_scale_shoulders" />
                    <equipment slot="Body" id="Item.desert_scale_armor" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_aserai_horse" />
                <equipment slot="HorseHarness" id="Item.half_mail_and_plate_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- BATTANIA TROOPS -->
    <!-- +Athletics, -Riding -->
    <xsl:template match='NPCCharacter[@id="battanian_volunteer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="22" />
                <skill id="Riding" value="8" />
                <skill id="OneHanded" value="30" />
                <skill id="TwoHanded" value="30" />
                <skill id="Polearm" value="10" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_clanwarrior" />
                <upgrade_target id="NPCCharacter.battanian_woodrunner" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item1" id="Item.celtic_throwing_dagger" />
                    <equipment slot="Item2" id="Item.celtic_throwing_dagger" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item1" id="Item.peasant_maul_t1_2" />
                    <equipment slot="Body" id="Item.battania_civil_a" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_clanwarrior"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="43" />
                <skill id="Riding" value="22" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="67" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_trained_warrior" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item2" id="Item.battania_sword_1_t2" />
                    <equipment slot="Item3" id="Item.celtic_throwing_dagger" />
                    <equipment slot="Head" id="Item.leather_studdedhelm" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                    <equipment slot="Gloves" id="Item.roughtied_leather_bracers" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item2" id="Item.battania_sword_1_t2" />
                    <equipment slot="Item3" id="Item.celtic_throwing_dagger" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                    <equipment slot="Gloves" id="Item.strapped_leather_bracers" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_trained_warrior"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="95" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_picked_warrior" />
                <upgrade_target id="NPCCharacter.battanian_scout" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item2" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item3" id="Item.woodland_axe_t3" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item2" id="Item." />
                    <equipment slot="Item3" id="Item.woodland_axe_t3" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.helmet_with_faceguard" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_picked_warrior"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="107" />
                <skill id="Riding" value="68" />
                <skill id="OneHanded" value="123" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_oathsworn" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_spear_3_t3" />
                    <equipment slot="Item1" id="Item.battania_large_shield_a" />
                    <equipment slot="Item2" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item3" id="Item.highland_throwing_axe_1_t2" />
                    <equipment slot="Body" id="Item.battania_woodland_chainmail" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_oathsworn"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="150" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_spear_4_t4" />
                    <equipment slot="Item1" id="Item.battania_large_shield_b" />
                    <equipment slot="Item2" id="Item.battania_axe_3_t5" />
                    <equipment slot="Item3" id="Item.western_javelin_2_t3" />
                    <equipment slot="Body" id="Item.battania_mercenary_armor" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Gloves" id="Item.battania_noble_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_scout"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="82" />
                <skill id="Riding" value="93" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="123" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_horseman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_spear_4_t4" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item2" id="Item.battania_sword_1_t2" />
                    <equipment slot="Item3" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Body" id="Item.battanian_chainmail_armor_c" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Horse" id="Item.battania_horse" />
                    <equipment slot="HorseHarness" id="Item.battania_horse_harness" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_horseman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="110" />
                <skill id="Riding" value="120" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="150" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.khuzait_lance_2_t4" />
                    <equipment slot="Item1" id="Item.battania_shield_targe_a" />
                    <equipment slot="Item2" id="Item.battania_sword_4_t4" />
                    <equipment slot="Item3" id="Item.highland_throwing_axe_1_t2" />
                    <equipment slot="Body" id="Item.battania_warlord_armor" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_b" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.t2_battania_horse" />
                <equipment slot="HorseHarness" id="Item.battania_horse_harness_halfscaled" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_woodrunner"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="43" />
                <skill id="Riding" value="22" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="20" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_raider" />
                <upgrade_target id="NPCCharacter.battanian_skirmisher" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item1" id="Item.western_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.battania_targe_b" />
                    <equipment slot="Body" id="Item.battania_light_armor_b" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.roughtied_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item1" id="Item.western_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.battania_targe_b" />
                    <equipment slot="Body" id="Item.battania_light_armor_e" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                    <equipment slot="Gloves" id="Item.roughtied_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item1" id="Item.western_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.battania_targe_b" />
                    <equipment slot="Body" id="Item.battania_light_armor_d" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Gloves" id="Item.roughtied_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_raider"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="95" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_falxman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2haxe_1_t2" />
                    <equipment slot="Item1" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item2" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item3" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2haxe_1_t2" />
                    <equipment slot="Item1" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item2" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item3" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_falxman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Battanian Veteran Raider</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="107" />
                <skill id="Riding" value="68" />
                <skill id="OneHanded" value="60" />
                <skill id="TwoHanded" value="130" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_veteran_falxman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2hsword_2_t3" />
                    <equipment slot="Item1" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Item2" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.scale_armor" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2hsword_2_t3" />
                    <equipment slot="Item1" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Item2" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.scale_armor" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2hsword_2_t3" />
                    <equipment slot="Item1" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Item2" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.scale_armor" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_veteran_falxman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Battanian Falxman</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="160" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2hsword_4_t4" />
                    <equipment slot="Item1" id="Item.woodland_throwing_axe_1_t1" />
                    <equipment slot="Item2" id="Item.western_javelin_2_t3" />
                    <equipment slot="Body" id="Item.kilt_over_plated_leather" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_skirmisher"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_veteran_skirmisher" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.battania_shield_targe_a" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.fur_armor" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.battania_noble_bracers" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.battania_shield_targe_a" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.fur_armor" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.helmet_with_faceguard" />
                    <equipment slot="Gloves" id="Item.battania_noble_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_veteran_skirmisher"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="107" />
                <skill id="Riding" value="68" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_wildling" />
                <upgrade_target id="NPCCharacter.battanian_mounted_skirmisher" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.battania_large_shield_a" />
                    <equipment slot="Item2" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.ranger_mail" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_wildling"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="160" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_sword_4_t4" />
                    <equipment slot="Item1" id="Item.battania_large_shield_b" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Body" id="Item.battania_mercenary_armor" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Cape" id="Item.battania_cloak_furr" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_mounted_skirmisher"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="110" />
                <skill id="Riding" value="120" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="160" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_sword_4_t4" />
                    <equipment slot="Item1" id="Item.studded_round_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Body" id="Item.western_scale_mail" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.t2_battania_horse" />
                <equipment slot="HorseHarness" id="Item.battania_horse_harness_halfscaled" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_highborn_youth"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="65" />
                <skill id="Riding" value="35" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="70" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="100" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_highborn_warrior" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battania_2hsword_1_t2" />
                    <equipment slot="Body" id="Item.highland_cloth" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battania_2haxe_1_t2" />
                    <equipment slot="Body" id="Item.highland_cloth" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battania_2hsword_1_t2" />
                    <equipment slot="Body" id="Item.highland_cloth" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_highborn_warrior"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="101" />
                <skill id="Riding" value="64" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="100" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="130" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_hero" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battania_2hsword_2_t3" />
                    <equipment slot="Body" id="Item.fur_armor_with_strap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battania_2hsword_2_t3" />
                    <equipment slot="Body" id="Item.fur_armor_with_strap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battania_2hsword_2_t3" />
                    <equipment slot="Body" id="Item.fur_armor_with_strap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_hero"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="126" />
                <skill id="Riding" value="94" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="130" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="160" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_fian" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_3_t3" />
                    <equipment slot="Body" id="Item.battanian_chainmail_armor_b" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_3_t3" />
                    <equipment slot="Body" id="Item.battanian_chainmail_armor_b" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_3_t3" />
                    <equipment slot="Body" id="Item.battanian_chainmail_armor_b" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_fian"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="170" />
                <skill id="Riding" value="120" />
                <skill id="OneHanded" value="120" />
                <skill id="TwoHanded" value="170" />
                <skill id="Polearm" value="120" />
                <skill id="Bow" value="200" />
                <skill id="Crossbow" value="120" />
                <skill id="Throwing" value="120" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_fian_champion" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_5_t4" />
                    <equipment slot="Body" id="Item.battanian_scale_armor_b" />
                    <equipment slot="Head" id="Item.battania_earmuff_helmet_c" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_5_t4" />
                    <equipment slot="Body" id="Item.battanian_scale_armor_b" />
                    <equipment slot="Head" id="Item.battania_earmuff_helmet_d" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_5_t4" />
                    <equipment slot="Body" id="Item.battanian_scale_armor_b" />
                    <equipment slot="Head" id="Item.battania_earmuff_helmet_c" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                    <equipment slot="Leg" id="Item.battania_warlord_boots" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_fian_champion"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="240" />
                <skill id="Riding" value="140" />
                <skill id="OneHanded" value="150" />
                <skill id="TwoHanded" value="220" />
                <skill id="Polearm" value="150" />
                <skill id="Bow" value="260" />
                <skill id="Crossbow" value="150" />
                <skill id="Throwing" value="150" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_5_t4" />
                    <equipment slot="Body" id="Item.battania_noble_armor" />
                    <equipment slot="Head" id="Item.battanian_crowned_helmet" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_5_t4" />
                    <equipment slot="Body" id="Item.battania_noble_armor" />
                    <equipment slot="Head" id="Item.battanian_crowned_helmet" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item3" id="Item.battania_2hsword_5_t4" />
                    <equipment slot="Body" id="Item.battania_noble_armor" />
                    <equipment slot="Head" id="Item.battanian_crowned_helmet" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- EMPIRE TROOPS -->
    <!-- std Athletics, std Riding -->
    <!-- T1 -->
    <xsl:template match='NPCCharacter[@id="imperial_recruit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="20" />
                <skill id="Riding" value="10" />
                <skill id="OneHanded" value="30" />
                <skill id="TwoHanded" value="30" />
                <skill id="Polearm" value="30" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_infantryman" />
                <upgrade_target id="NPCCharacter.imperial_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_sickle_1_t1" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.tied_cloth_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_2haxe_1_t1" />
                    <equipment slot="Item1" id="Item.peasant_sickle_1_t1" />
                    <equipment slot="Head" id="Item.imperial_cloth_coif" />
                    <equipment slot="Body" id="Item.tunic_with_shoulder_pads" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T2 -->
    <xsl:template match='NPCCharacter[@id="imperial_infantryman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Riding" value="25" />
                <skill id="OneHanded" value="67" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_trained_infantryman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.morningstar_mace_t3" />
                    <equipment slot="Item1" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_1_t2" />
                    <equipment slot="Head" id="Item.imperial_padded_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_a" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.empire_plate_armor_shoulder_a" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item1" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_1_t2" />
                    <equipment slot="Head" id="Item.open_padded_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_b" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.empire_plate_armor_shoulder_a" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Riding" value="25" />
                <skill id="OneHanded" value="55" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="20" />
                <skill id="Bow" value="55" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_trained_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.arrow_emp_1_a" />
                    <equipment slot="Item2" id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item3" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.arming_coif" />
                    <equipment slot="Body" id="Item.padded_cloth_with_strips" />
                    <equipment slot="Cape" id="Item.battanian_leather_shoulder_a" />
                    <equipment slot="Gloves" id="Item.strapped_leather_bracers" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />

                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.arrow_emp_1_a" />
                    <equipment slot="Item2" id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item3" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.arming_coif" />
                    <equipment slot="Body" id="Item.padded_cloth_with_strips" />
                    <equipment slot="Cape" id="Item.battanian_leather_shoulder_a" />
                    <equipment slot="Gloves" id="Item.strapped_leather_bracers" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T3 -->
    <xsl:template match='NPCCharacter[@id="imperial_trained_infantryman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="70" />
                <skill id="Riding" value="50" />
                <skill id="OneHanded" value="95" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_veteran_infantryman" />
                <upgrade_target id="NPCCharacter.imperial_menavliaton" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_2_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_lance_1_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_1_t2" />
                    <equipment slot="Body" id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_mail_coif" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_3_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_lance_1_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_1_t2" />
                    <equipment slot="Body" id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_open_mail_coif" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_trained_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="70" />
                <skill id="Riding" value="50" />
                <skill id="OneHanded" value="85" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="85" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_veteran_archer" />
                <upgrade_target id="NPCCharacter.imperial_crossbowman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.morningstar_mace_t3" />
                    <equipment slot="Item3" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_g" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.imperial_mail_coif" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item3" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_g" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.imperial_mail_coif" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 -->
    <xsl:template match='NPCCharacter[@id="imperial_veteran_infantryman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="75" />
                <skill id="OneHanded" value="123" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_legionary" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_mace_2_t4" />
                    <equipment slot="Item1" id="Item.reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Item3" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Body" id="Item.empire_legion_b" />
                    <equipment slot="Gloves" id="Item.decorated_imperial_gauntlets" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_nasal_helm" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_5_t4" />
                    <equipment slot="Item1" id="Item.reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Item3" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Body" id="Item.empire_legion_a" />
                    <equipment slot="Gloves" id="Item.decorated_imperial_gauntlets" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_nasal_helm" />
                    <equipment slot="Cape" id="Item.imperial_studded_strip_shoulders" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_menavliaton"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="75" />
                <skill id="OneHanded" value="60" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="144" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_elite_menavliaton" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_polearm_1_t4" />
                    <!-- <equipment slot="Item1" id="Item.empire_sword_4_t4" /> -->
                    <!-- <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" /> -->
                    <!-- <equipment slot="Item3" id="Item.western_javelin_1_t2" /> -->
                    <equipment slot="Body" id="Item.imperial_mail_over_leather" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_nasal_helm" />
                    <equipment slot="Cape" id="Item.varangian_bra_padded" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="75" />
                <skill id="OneHanded" value="115" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="115" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_palatine_guard" />
                <upgrade_target id="NPCCharacter.bucellarii" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <!-- <equipment slot="Item3" id="Item.bodkin_arrows_c" /> -->
                    <equipment slot="Item3" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.leatherlame_roundkettle_over_imperial_leather" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <!-- <equipment slot="Item3" id="Item.bodkin_arrows_c" /> -->
                    <equipment slot="Item3" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.roundkettle_over_imperial_leather" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <!-- <equipment slot="Item3" id="Item.bodkin_arrows_c" /> -->
                    <equipment slot="Item3" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.ironlame_roundkettle_over_imperial_leather" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_crossbowman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="75" />
                <skill id="OneHanded" value="115" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="115" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_sergeant_crossbowman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_e" />
                    <equipment slot="Item1" id="Item.bolt_e" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <equipment slot="Item3" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.leatherlame_roundkettle_over_imperial_leather" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_e" />
                    <equipment slot="Item1" id="Item.bolt_e" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <equipment slot="Item3" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.roundkettle_over_imperial_leather" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_e" />
                    <equipment slot="Item1" id="Item.bolt_e" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <equipment slot="Item3" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.ironlame_roundkettle_over_imperial_leather" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 -->
    <xsl:template match='NPCCharacter[@id="imperial_legionary"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="100" />
                <skill id="OneHanded" value="150" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_5_t4" />
                    <equipment slot="Item1" id="Item.fortified_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Item3" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Body" id="Item.imperial_lamellar" />
                    <equipment slot="Gloves" id="Item.plated_strip_gauntlets" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.empire_helmet_with_metal_strips" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_mace_5_t5" />
                    <equipment slot="Item1" id="Item.fortified_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Item3" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Body" id="Item.imperial_lamellar" />
                    <equipment slot="Gloves" id="Item.plated_strip_gauntlets" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.empire_helmet_with_metal_strips" />
                    <equipment slot="Cape" id="Item.varangian_bra_padded" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_elite_menavliaton"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="100" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="180" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_polearm_1_t4" />
                    <!-- <equipment slot="Item1" id="Item.broad_arming_sword_t4" /> -->
                    <!-- <equipment slot="Item2" id="Item.eastern_javelin_1_t2" /> -->
                    <!-- <equipment slot="Item3" id="Item.imperial_throwing_spear_1_t4" /> -->
                    <equipment slot="Body" id="Item.imperial_lamellar" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.heavy_nasalhelm_over_imperial_leather" />
                    <equipment slot="Cape" id="Item.varangian_bra_mail" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_palatine_guard"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="100" />
                <skill id="OneHanded" value="145" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="145" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_yew_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.empire_sword_4_t4" />
                    <!-- <equipment slot="Item3" id="Item.piercing_arrows" /> -->
                    <equipment slot="Item3" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Cape" id="Item.varangian_bra_mail" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_yew_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_a" />
                    <equipment slot="Item2" id="Item.empire_mace_3_t4" />
                    <!-- <equipment slot="Item3" id="Item.piercing_arrows" /> -->
                    <equipment slot="Item3" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Cape" id="Item.varangian_bra_mail" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="bucellarii"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="130" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="160" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_c" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_c" />
                    <equipment slot="Item3" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.imperial_nasal_helm" />
                    <equipment slot="Gloves" id="Item.plated_strip_gauntlets" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_c" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_c" />
                    <equipment slot="Item3" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.leatherlame_roundkettle_over_imperial_mail" />
                    <equipment slot="Gloves" id="Item.plated_strip_gauntlets" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_c" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_c" />
                    <equipment slot="Item3" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Gloves" id="Item.plated_strip_gauntlets" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_empire_horse" />
                <equipment slot="HorseHarness" id="Item.northern_ring_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_sergeant_crossbowman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="100" />
                <skill id="OneHanded" value="145" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="145" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_d" />
                    <equipment slot="Item2" id="Item.empire_mace_3_t4" />
                    <equipment slot="Item3" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.ironlame_roundkettle_over_imperial_mail" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_d" />
                    <equipment slot="Item2" id="Item.empire_sword_5_t4" />
                    <equipment slot="Item3" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.leatherlame_roundkettle_over_imperial_mail" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_d" />
                    <equipment slot="Item2" id="Item.empire_mace_3_t4" />
                    <equipment slot="Item3" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.roundkettle_over_imperial_mail" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Royals -->
    <xsl:template match='NPCCharacter[@id="imperial_vigla_recruit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Riding" value="40" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_equite" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_2_t2" />
                    <equipment slot="Item1" id="Item.light_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_1_t2" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_e" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_cloth_coif" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_2_t2" />
                    <equipment slot="Item1" id="Item.light_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_1_t2" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_d" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.imperial_cloth_coif" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_equite"]'> <!-- Imperial Vigla Elite (Inf. Now) -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Imperial Vigla Elite</xsl:attribute>
            <xsl:attribute name="default_group">Infantry</xsl:attribute>
            <xsl:attribute name="upgrade_requirement"></xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="70" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="70" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="70" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_heavy_horseman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.western_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_2_t3" />
                    <equipment slot="Body" id="Item.eastern_studded_leather" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.roundkettle_over_imperial_cloth" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.western_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <equipment slot="Body" id="Item.eastern_studded_leather" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.roundkettle_over_imperial_cloth" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.western_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_3_t3" />
                    <equipment slot="Body" id="Item.eastern_studded_leather" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.roundkettle_over_imperial_cloth" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
                <!-- <equipment slot="Horse" id="Item.empire_horse" /> -->
                <!-- <equipment slot="HorseHarness" id="Item.stripped_leather_harness" /> -->
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_heavy_horseman"]'> <!-- Req. Horse Now -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Imperial Equite</xsl:attribute>
            <xsl:attribute name="upgrade_requires">ItemCategory.horse</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="120" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="160" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_cataphract" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_2_t3" />
                    <equipment slot="Head" id="Item.leatherlame_feathered_spangenhelm_over_mail" />
                    <equipment slot="Cape" id="Item.woven_leather_shoulders" />
                    <equipment slot="Body" id="Item.empire_horseman_armor" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_2_t3" />
                    <equipment slot="Head" id="Item.feathered_spangenhelm_over_imperial_coif" />
                    <equipment slot="Cape" id="Item.woven_leather_shoulders" />
                    <equipment slot="Body" id="Item.empire_horseman_armor" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_2_t3" />
                    <equipment slot="Head" id="Item.leatherlame_feathered_spangenhelm_over_leather" />
                    <equipment slot="Cape" id="Item.woven_leather_shoulders" />
                    <equipment slot="Body" id="Item.empire_horseman_armor" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.empire_horse" />
                <equipment slot="HorseHarness" id="Item.half_scale_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_cataphract"]'> <!-- Req. War Horse Now -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="upgrade_requires">ItemCategory.war_horse</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="160" />
                <skill id="OneHanded" value="170" />
                <skill id="TwoHanded" value="120" />
                <skill id="Polearm" value="200" />
                <skill id="Bow" value="120" />
                <skill id="Crossbow" value="120" />
                <skill id="Throwing" value="120" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_elite_cataphract" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_3_t5" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.imperial_goggled_helmet" />
                    <equipment slot="Body" id="Item.imperial_lamellar" />
                    <equipment slot="Gloves" id="Item.lordly_padded_mitten" />
                    <equipment slot="Leg" id="Item.lamellar_plate_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_3_t5" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_4_t4" />
                    <equipment slot="Head" id="Item.imperial_goggled_helmet" />
                    <equipment slot="Body" id="Item.imperial_lamellar" />
                    <equipment slot="Gloves" id="Item.lordly_padded_mitten" />
                    <equipment slot="Leg" id="Item.lamellar_plate_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_3_t5" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_4_t4" />
                    <equipment slot="Head" id="Item.imperial_goggled_helmet" />
                    <equipment slot="Body" id="Item.imperial_lamellar" />
                    <equipment slot="Gloves" id="Item.lordly_padded_mitten" />
                    <equipment slot="Leg" id="Item.lamellar_plate_boots" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_empire_horse" />
                <equipment slot="HorseHarness" id="Item.imperial_scale_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_elite_cataphract"]'><!-- No Horse Req. 4 Upgrade -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="160" />
                <skill id="Riding" value="220" />
                <skill id="OneHanded" value="220" />
                <skill id="TwoHanded" value="150" />
                <skill id="Polearm" value="260" />
                <skill id="Bow" value="150" />
                <skill id="Crossbow" value="150" />
                <skill id="Throwing" value="150" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_3_t5" />
                    <equipment slot="Item1" id="Item.chivalric_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.imperial_goggled_helmet" />
                    <equipment slot="Cape" id="Item.imperial_lamellar_shoulders" />
                    <equipment slot="Body" id="Item.imperial_scale_armor" />
                    <equipment slot="Gloves" id="Item.decorated_imperial_gauntlets" />
                    <equipment slot="Leg" id="Item.decorated_imperial_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_3_t5" />
                    <equipment slot="Item1" id="Item.chivalric_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.imperial_goggled_helmet" />
                    <equipment slot="Cape" id="Item.imperial_lamellar_shoulders" />
                    <equipment slot="Body" id="Item.imperial_scale_armor" />
                    <equipment slot="Gloves" id="Item.decorated_imperial_gauntlets" />
                    <equipment slot="Leg" id="Item.decorated_imperial_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_3_t5" />
                    <equipment slot="Item1" id="Item.chivalric_kite_shield" />
                    <equipment slot="Item2" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.imperial_goggled_helmet" />
                    <equipment slot="Cape" id="Item.imperial_lamellar_shoulders" />
                    <equipment slot="Body" id="Item.imperial_scale_armor" />
                    <equipment slot="Gloves" id="Item.decorated_imperial_gauntlets" />
                    <equipment slot="Leg" id="Item.decorated_imperial_boots" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t3_empire_horse" />
                <equipment slot="HorseHarness" id="Item.imperial_scale_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- KHUZAIT TROOPS -->
    <!-- -Athletics, +Riding -->
    <!-- T1 -->
    <xsl:template match='NPCCharacter[@id="khuzait_nomad"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="18" />
                <skill id="Riding" value="12" />
                <skill id="OneHanded" value="30" />
                <skill id="TwoHanded" value="10" />
                <skill id="Polearm" value="30" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_tribal_warrior" />
                <upgrade_target id="NPCCharacter.khuzait_footman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.simple_back_sword_t2" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Item1" id="Item.peasant_pitchfork_2_t1" />
                    <equipment slot="Head" id="Item.nomad_padded_hood" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T2 -->
    <xsl:template match='NPCCharacter[@id="khuzait_footman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="37" />
                <skill id="Riding" value="28" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="20" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_hunter" />
                <upgrade_target id="NPCCharacter.khuzait_spearman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Body" id="Item.khuzait_belt_leather" />
                    <equipment slot="Cape" id="Item.aserai_horseman_shoulder" />
                    <equipment slot="Head" id="Item.decorated_nomad_cap" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Body" id="Item.thick_sleeved_robe" />
                    <equipment slot="Cape" id="Item.leather_lamellar_shoulders" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_tribal_warrior"]'> <!-- Infantry Now -->
        <xsl:copy>
            <!-- <xsl:apply-templates select="@*" /> -->
            <xsl:copy-of select="@id | @default_group | @level | @name | @occupation | @culture" />
            <xsl:attribute name="default_group">Ranged</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="37" />
                <skill id="Riding" value="28" />
                <skill id="OneHanded" value="20" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="55" />
                <skill id="Bow" value="55" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_raider" />
                <upgrade_target id="NPCCharacter.khuzait_horseman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.western_spear_2_t2" />
                    <equipment slot="Body" id="Item.studded_leather_waistcoat" />
                    <equipment slot="Cape" id="Item.wolf_shoulder" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.western_spear_2_t2" />
                    <equipment slot="Body" id="Item.khuzait_belt_leather" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Head" id="Item.tied_head_wrapping" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>

                <EquipmentSet id="khuzait_troop_civilian_template_t1" civilian="true" />
                <equipment slot="Horse" id="Item." />
                <equipment slot="HorseHarness" id="Item." />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T3 -->
    <xsl:template match='NPCCharacter[@id="khuzait_raider"]'> <!-- Foot Archer Now -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="default_group">Ranged</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="65" />
                <skill id="Riding" value="55" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="85" />
                <skill id="Bow" value="85" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_horse_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.northern_spear_1_t2" />
                    <equipment slot="Body" id="Item.aserai_horseman_armor" />
                    <equipment slot="Cape" id="Item.aserai_horseman_shoulder" />
                    <equipment slot="Head" id="Item.peaked_fur_hood" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.northern_spear_1_t2" />
                    <equipment slot="Body" id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Cape" id="Item.khuzait_leather_pauldron" />
                    <equipment slot="Head" id="Item.peaked_fur_hood" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
                <!-- <equipment slot="Horse" id="Item.khuzait_horse" /> -->
                <!-- <equipment slot="HorseHarness" id="Item.steppe_harness" /> -->
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_horseman"]'> <!-- Req. Horse Now -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="upgrade_requires">ItemCategory.horse</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="45" />
                <skill id="Riding" value="75" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_lancer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item1" id="Item.decorated_steppe_shield" />
                    <equipment slot="Item2" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Cape" id="Item.aserai_scale_shoulder_d" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.northern_light_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_hunter"]'> <!-- Khuzait Maceman -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Khuzait Maceman</xsl:attribute>
            <xsl:attribute name="default_group">Infantry</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="65" />
                <skill id="Riding" value="55" />
                <skill id="OneHanded" value="110" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.aserai_mace_3_t3" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />

                    <equipment slot="Body" id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.stitched_leather_shoulders" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_spearman"]'> <!-- Khuzait Reaper -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Khuzait Reaper</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="65" />
                <skill id="Riding" value="55" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="110" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_spear_infantry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.straight_scythe" />
                    <equipment slot="Body" id="Item.khuzait_fortified_armor" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.bolted_leather_strips" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 -->
    <xsl:template match='NPCCharacter[@id="khuzait_horse_archer"]'> <!-- Req. Horse Now -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <!-- Doesn't require War Horse anymore -->
            <xsl:attribute name="upgrade_requires">ItemCategory.horse</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="68" />
                <skill id="Riding" value="107" />
                <skill id="OneHanded" value="60" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="115" />
                <skill id="Bow" value="115" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_heavy_horse_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.steppe_arrows" />
                    <equipment slot="Item3" id="Item.southern_spear_4_t3" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Cape" id="Item.leather_lamellar_shoulders" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.stripped_leather_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_lancer"]'> <!-- Already Req. War Horse -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="68" />
                <skill id="Riding" value="107" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_heavy_lancer" />
            </upgrade_targets>
            <Equipments>
                <equipment slot="Item0" id="Item.khuzait_lance_2_t4" />
                <equipment slot="Item1" id="Item.steppe_guardian_shield" />
                <equipment slot="Item2" id="Item.khuzait_sword_3_t3" />
                <equipment slot="Body" id="Item.leather_lamellar_armor" />
                <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                <equipment slot="Cape" id="Item.khuzait_leather_pauldron" />

                <EquipmentRoster>
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.steppe_helmet" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.nomad_helmet" />
                </EquipmentRoster>

                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_archer"]'><!-- Khuzait Mace Infantry -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Khuzait Mace Infantry</xsl:attribute>
            <xsl:attribute name="default_group">Infantry</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="93" />
                <skill id="Riding" value="82" />
                <skill id="OneHanded" value="144" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_marksman" />
            </upgrade_targets>
            <Equipments>
                <equipment slot="Item0" id="Item.khuzait_mace_2_t4" />
                <equipment slot="Item3" id="Item.footmans_wicker_shield" />

                <equipment slot="Body" id="Item.leather_lamellar_armor" />
                <equipment slot="Leg" id="Item.eastern_leather_boots" />
                <equipment slot="Cape" id="Item.khuzait_leather_pauldron" />
                <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.steppe_helmet" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.nomad_helmet" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_spear_infantry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <!-- <xsl:attribute name="name">Khuzait Saber Infantry</xsl:attribute> -->
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="93" />
                <skill id="Riding" value="82" />
                <skill id="OneHanded" value="60" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="144" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_darkhan" />
            </upgrade_targets>
            <Equipments>
                <equipment slot="Item0" id="Item.northern_spear_2_t3" />
                <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                <equipment slot="Leg" id="Item.eastern_leather_boots" />
                <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                <equipment slot="Cape" id="Item.eastern_studded_shoulders" />

                <EquipmentRoster>
                    <equipment slot="Head" id="Item.nomad_helmet" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.steppe_helmet" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                </EquipmentRoster>

                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 -->
    <xsl:template match='NPCCharacter[@id="khuzait_heavy_horse_archer"]'><!-- Req. War Horse Now -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="upgrade_requires">ItemCategory.war_horse</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="140" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="145" />
                <skill id="Bow" value="145" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item3" id="Item.southern_spear_3_t3" />

                    <equipment slot="Body" id="Item.eastern_plated_leather_vest" />
                    <equipment slot="Head" id="Item.plumed_lamellar_helmet" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder" />
                    <!-- <equipment slot="Cape" id="Item.leather_lamellar_shoulders" /> -->
                </EquipmentRoster>

                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item2" id="Item.bodkin_arrows_b" />
                    <equipment slot="Item3" id="Item.southern_spear_3_t3" />

                    <equipment slot="Body" id="Item.eastern_plated_leather_vest" />
                    <equipment slot="Head" id="Item.plumed_lamellar_helmet" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                    <!-- <equipment slot="Cape" id="Item.lamellar_shoulders" /> -->
                    <equipment slot="Cape" id="Item.leather_lamellar_shoulders" />
                </EquipmentRoster>

                <EquipmentSet id="khuzait_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_heavy_lancer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="140" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="160" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_5_t5" />
                    <equipment slot="Item1" id="Item.steppe_guardian_shield" />
                    <equipment slot="Item2" id="Item.khuzait_sword_4_t4" />
                    <equipment slot="Body" id="Item.brass_lamellar_over_mail" />
                    <equipment slot="Head" id="Item.khuzait_noble_helmet_with_fur" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <!-- <equipment slot="Cape" id="Item.lamellar_shoulders" /> -->
                    <!-- <equipment slot="Cape" id="Item.brass_lamellar_shoulder" /> -->
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.studded_steppe_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_marksman"]'><!-- Khuzait Tuslakh -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Khuzait Tuslakh</xsl:attribute>
            <xsl:attribute name="default_group">Infantry</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="110" />
                <skill id="OneHanded" value="180" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_mace_3_t5" />
                    <equipment slot="Item3" id="Item.stronger_footmans_wicker_shield" />

                    <equipment slot="Body" id="Item.eastern_lamellar_armor" />
                    <equipment slot="Head" id="Item.spiked_helmet_with_facemask" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                    <equipment slot="Cape" id="Item.lamellar_shoulders" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_darkhan"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="110" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="180" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <Equipments>

                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.khuzait_polearm_1_t4" />

                    <equipment slot="Body" id="Item.brass_lamellar_over_mail" />
                    <equipment slot="Head" id="Item.khuzait_noble_helmet_with_fur" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                    <equipment slot="Cape" id="Item.aserai_scale_shoulder_d" />
                </EquipmentRoster>

                <EquipmentSet id="khuzait_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Royals -->
    <xsl:template match='NPCCharacter[@id="khuzait_noble_son"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="35" />
                <skill id="Riding" value="65" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="70" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_qanqli" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Body" id="Item.khuzait_belt_leather" />
                    <equipment slot="Head" id="Item.decorated_nomad_cap" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat" />
                    <equipment slot="Head" id="Item.decorated_nomad_cap" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Head" id="Item.decorated_nomad_cap" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t1" civilian="true" />
                <equipment slot="Horse" id="Item.khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.steppe_fur_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_qanqli"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="64" />
                <skill id="Riding" value="101" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="70" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="100" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_torguud" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Body" id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Head" id="Item.fur_hood" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Body" id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Cape" id="Item.steppe_leather_shoulders" />
                    <equipment slot="Head" id="Item.fur_hood" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.stripped_leather_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_torguud"]'> <!-- Already Req. War Horse -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="94" />
                <skill id="Riding" value="126" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="160" />
                <skill id="Bow" value="130" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_kheshig" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.steppe_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_polearm_1_t4" />
                    <equipment slot="Body" id="Item.leather_lamellar_armor" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Cape" id="Item.leather_lamellar_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.steppe_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_polearm_1_t4" />
                    <equipment slot="Body" id="Item.leather_lamellar_armor" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Cape" id="Item.leather_lamellar_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.steppe_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_polearm_1_t4" />
                    <equipment slot="Body" id="Item.leather_lamellar_armor" />
                    <equipment slot="Head" id="Item.nomad_helmet" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Cape" id="Item.leather_lamellar_shoulders" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_kheshig"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="120" />
                <skill id="Riding" value="170" />
                <skill id="OneHanded" value="120" />
                <skill id="TwoHanded" value="120" />
                <skill id="Polearm" value="200" />
                <skill id="Bow" value="170" />
                <skill id="Crossbow" value="120" />
                <skill id="Throwing" value="120" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_khans_guard" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_steppe_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.khuzait_polearm_1_t4" />
                    <equipment slot="Item3" id="Item.khuzait_sword_2_t3" />
                    <equipment slot="Body" id="Item.khuzait_lamellar_strapped" />
                    <equipment slot="Head" id="Item.spiked_helmet_with_facemask" />
                    <equipment slot="Leg" id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.studded_steppe_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_khans_guard"]'> <!-- No Horse Req. for Upgrade -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="240" />
                <skill id="OneHanded" value="150" />
                <skill id="TwoHanded" value="150" />
                <skill id="Polearm" value="260" />
                <skill id="Bow" value="220" />
                <skill id="Crossbow" value="150" />
                <skill id="Throwing" value="150" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.steppe_arrows" />
                    <equipment slot="Item2" id="Item.steppe_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_polearm_1_t4" />
                    <equipment slot="Body" id="Item.brass_lamellar_over_mail" />
                    <!-- <equipment slot="Head" id="Item.spiked_helmet_with_facemask" /> -->
                    <equipment slot="Head" id="Item.sturgian_lord_helmet_c" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t3_khuzait_horse" />
                <equipment slot="HorseHarness" id="Item.mail_and_plate_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- STURGIA TROOPS -->
    <!-- +Athletics, -Riding -->
    <!-- T1 -->
    <xsl:template match='NPCCharacter[@id="sturgian_recruit"]'>
        <!-- Sturgian Recruit - T1 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="22" />
                <skill id="Riding" value="8" />
                <skill id="OneHanded" value="30" />
                <skill id="TwoHanded" value="30" />
                <skill id="Polearm" value="10" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_warrior" />
                <upgrade_target id="NPCCharacter.sturgian_woodsman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <!-- <equipment slot="Item0" id="Item.sturgia_axe_2_t2" /> -->
                    <equipment slot="Item0" id="Item.sturgia_sword_1_t2" />
                    <equipment slot="Head" id="Item.nordic_leather_cap" />
                    <equipment slot="Body" id="Item.tundra_tunic" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <!-- <equipment slot="Item0" id="Item.seax" /> -->
                    <equipment slot="Item0" id="Item.peasant_2haxe_1_t1" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Body" id="Item.tundra_tunic" />
                    <equipment slot="Gloves" id="Item.ragged_armwraps" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T2 -->
    <xsl:template match='NPCCharacter[@id="sturgian_warrior"]'>
        <!-- Sturgian Warrior - T2 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="43" />
                <skill id="Riding" value="22" />
                <skill id="OneHanded" value="76" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="20" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_soldier" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_round_sparring_shield" />
                    <equipment slot="Head" id="Item.spangenhelm_with_padded_cloth" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_b" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item1" id="Item.northern_round_sparring_shield" />
                    <equipment slot="Head" id="Item.spangenhelm_with_padded_cloth" />
                    <equipment slot="Body" id="Item.northern_padded_gambeson" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_woodsman"]'>
        <!-- Sturgian Woodsman - T2 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="43" />
                <skill id="Riding" value="22" />
                <skill id="OneHanded" value="55" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="50" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="42" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_brigand" />
                <upgrade_target id="NPCCharacter.sturgian_hunter" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item1" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.imperial_spear_t2" />
                    <equipment slot="Head" id="Item.spangenhelm_with_padded_cloth" />
                    <equipment slot="Body" id="Item.nordic_sloven_leather" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_a" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.imperial_spear_t2" />
                    <equipment slot="Head" id="Item.spangenhelm_with_padded_cloth" />
                    <equipment slot="Body" id="Item.nordic_sloven" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_b" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_bit_axe_t2" />
                    <equipment slot="Item1" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.imperial_spear_t2" />
                    <equipment slot="Body" id="Item.roughcloth_shortcoat" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Head" id="Item.spangenhelm_with_padded_cloth" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T3 -->
    <xsl:template match='NPCCharacter[@id="sturgian_soldier"]'>
        <!-- Sturgian Soldier - T3  -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_spearman" />
                <upgrade_target id="NPCCharacter.sturgian_berzerker" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.northern_spear_2_t3" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_leather" />
                    <equipment slot="Body" id="Item.nordic_lamellar_vest" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_a" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.northern_spear_2_t3" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_b" />
                    <equipment slot="Body" id="Item.nordic_lamellar_vest" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_brigand"]'>
        <!-- Sturgian Brigand - T3 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="85" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="85" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_hardened_brigand" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.narrow_sword_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Body" id="Item.sturgian_chainmale_longsleeve" />
                    <equipment slot="Leg" id="Item.sturgia_boots_d" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_sword_3_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_leather" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                    <equipment slot="Body" id="Item.northern_padded_cloth" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_hunter"]'>
        <!-- Sturgian Hunter - T3 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="95" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_archer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nordic_shortbow" />
                    <equipment slot="Item1" id="Item.range_arrows" />
                    <equipment slot="Item2" id="Item.imperial_spear_t2" />
                    <equipment slot="Item3" id="Item.sturgia_sword_1_t2" />
                    <equipment slot="Head" id="Item.spangenhelm_with_padded_cloth" />
                    <equipment slot="Body" id="Item.nordic_lamellar_armor" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nordic_shortbow" />
                    <equipment slot="Item1" id="Item.range_arrows" />
                    <equipment slot="Item2" id="Item.imperial_spear_t2" />
                    <equipment slot="Item3" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Head" id="Item.spangenhelm_with_leather" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nordic_shortbow" />
                    <equipment slot="Item1" id="Item.range_arrows" />
                    <equipment slot="Item2" id="Item.imperial_spear_t2" />
                    <equipment slot="Item3" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Head" id="Item.spangenhelm_with_leather" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 -->
    <xsl:template match='NPCCharacter[@id="sturgian_spearman"]'>
        <!-- Sturgian Spearman - T4 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="107" />
                <skill id="Riding" value="68" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_shock_troop" />
                <upgrade_target id="NPCCharacter.sturgian_veteran_warrior" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_3_t4" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item2" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                    <equipment slot="Body" id="Item.sturgian_chainmale_shortsleeve" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.northern_brass_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_berzerker"]'>
        <!-- Sturgian Line Breaker - T4 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <!-- <xsl:attribute name="name">Sturgian Berzerker</xsl:attribute> -->
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="107" />
                <skill id="Riding" value="68" />
                <skill id="OneHanded" value="60" />
                <skill id="TwoHanded" value="144" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_ulfhednar" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_2haxe_1_t2" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_leather" />
                    <equipment slot="Body" id="Item.nordic_lamellar_armor" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_hardened_brigand"]'>
        <!-- Sturgian Hardened Brigand - T4 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="82" />
                <skill id="Riding" value="93" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="60" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_horse_raider" />
            </upgrade_targets>
            <Equipments>

                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_battle_axe_t3" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <!-- <equipment slot="Item1" id="Item.northern_spear_3_t4" /> -->
                    <equipment slot="Item2" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item3" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_leather" />
                    <equipment slot="Cape" id="Item.a_metal_lamellar_armor_shoulder_a" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_gambeson" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Gloves" id="Item.northern_brass_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_battle_axe_t3" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <!-- <equipment slot="Item1" id="Item.northern_spear_3_t4" /> -->
                    <equipment slot="Item2" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item3" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Head" id="Item.nasalhelm_over_mail" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_gambeson" />
                    <equipment slot="Cape" id="Item.a_metal_lamellar_armor_shoulder_a" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Gloves" id="Item.northern_brass_bracers" />
                </EquipmentRoster>

                <equipment slot="Horse" id="Item.sturgia_horse" />
                <equipment slot="HorseHarness" id="Item.northern_light_harness" />

                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_archer"]'>
        <!-- Sturgian Archer - T4 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="107" />
                <skill id="Riding" value="68" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="123" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sturgian_veteran_bowman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.blunt_arrows" />
                    <equipment slot="Item2" id="Item.western_spear_1_t2" />
                    <equipment slot="Item3" id="Item.sturgia_sword_1_t2" />
                    <equipment slot="Head" id="Item.nasalhelm_over_mail" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_b" />
                    <equipment slot="Body" id="Item.vlandia_chainmail" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.blunt_arrows" />
                    <equipment slot="Item2" id="Item.western_spear_1_t2" />
                    <equipment slot="Item3" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Body" id="Item.sturgian_chainmale_longsleeve" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.blunt_arrows" />
                    <equipment slot="Item2" id="Item.western_spear_1_t2" />
                    <equipment slot="Item3" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Head" id="Item.nasalhelm_over_mail" />
                    <equipment slot="Body" id="Item.sturgian_chainmale_longsleeve" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 -->
    <xsl:template match='NPCCharacter[@id="sturgian_shock_troop"]'>
        <!-- Sturgian Heavy Spearman - T5 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="160" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_sword_3_t3" />
                    <equipment slot="Item1" id="Item.sturgia_lance_2_t5" />
                    <equipment slot="Item2" id="Item.heavy_round_shield" />
                    <equipment slot="Head" id="Item.sturgian_helmet_closed" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_fortified" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_veteran_warrior"]'>
        <!-- Sturgian Heavy Axeman - T5 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="180" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_battle_axe_t3" />
                    <equipment slot="Item1" id="Item.strapped_round_shield" />
                    <!-- <equipment slot="Item2" id="Item.northern_throwing_axe_1_t1" /> -->
                    <!-- <equipment slot="Item3" id="Item.northern_throwing_axe_1_t1" /> -->
                    <equipment slot="Head" id="Item.sturgian_helmet_b_close" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_b" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_base" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_ulfhednar"]'>
        <!-- Sturgian Heroic Line Breaker - T5 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <BodyProperties version="4" age="24.03" weight="0.8034" build="0.8219"
                    key="00000400000002417470000007729880744371117020002292515704801101000099900309435000000000000000000000000000000000000000000001200000" />
                <BodyPropertiesMax version="4" age="58.36" weight="0.9485" build="0.9485"
                    key="0008C406C0003586FEBEEEFFCCCEFFFEFFFFEE999FE7FFEFFFEFEFEECDFFFEFE05CEE0570CFFFFEF000000000000000000000000000000000000000077889105" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="180" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hooked_axe_t4" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_fortified" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_a" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.black_heart_2haxe_t3" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_fortified" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_a" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.bearded_axe_t3" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_fortified" />
                    <equipment slot="Cape" id="Item.battanian_chainmail_shoulder_a" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_horse_raider"]'>
        <!-- Sturgian Horse Raider - T5 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <!-- <xsl:attribute name="default_group">HorseArcher</xsl:attribute> -->
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="110" />
                <skill id="Riding" value="120" />
                <skill id="OneHanded" value="160" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="130" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>

                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_5_t5" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Head" id="Item.sturgia_heavy_cavalary_helmet" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_gambeson_heavy" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                </EquipmentRoster>

                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_sword_4_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Head" id="Item.sturgia_heavy_cavalary_helmet" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_gambeson_heavy" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                </EquipmentRoster>

                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_sword_5_t5" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Head" id="Item.sturgia_heavy_cavalary_helmet" />
                    <equipment slot="Body" id="Item.sturgian_lamellar_gambeson_heavy" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                </EquipmentRoster>

                <equipment slot="Horse" id="Item.t2_sturgia_horse" />
                <equipment slot="HorseHarness" id="Item.northern_ring_barding" />

                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_veteran_bowman"]'>
        <!-- Sturgian Veteran Bowman - T5 -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="90" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="90" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="150" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nomad_bow" />
                    <equipment slot="Item1" id="Item.blunt_arrows" />
                    <equipment slot="Item2" id="Item.northern_spear_3_t4" />
                    <equipment slot="Item3" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Head" id="Item.sturgian_helmet_b_open" />
                    <equipment slot="Cape" id="Item.bearskin" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.northern_brass_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nomad_bow" />
                    <equipment slot="Item1" id="Item.blunt_arrows" />
                    <equipment slot="Item2" id="Item.northern_spear_3_t4" />
                    <equipment slot="Item3" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Head" id="Item.sturgian_helmet_b_open" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.northern_brass_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Royals -->
    <xsl:template match='NPCCharacter[@id="sturgian_warrior_son"]'>
        <!-- Sturgian Otrok - T2R -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="65" />
                <skill id="Riding" value="35" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="100" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.varyag" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.simple_sparth_axe_t2" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                    <equipment slot="Body" id="Item.northern_padded_cloth" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.simple_sparth_axe_t2" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                    <equipment slot="Body" id="Item.northern_padded_cloth" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Head" id="Item.nordic_leather_cap" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="varyag"]'>
        <!-- Sturgian Varyag T3R -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sturgian Varyag</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="101" />
                <skill id="Riding" value="64" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="130" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="70" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.varyag_veteran" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.battania_2haxe_1_t2" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.ragged_armwraps" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="varyag_veteran"]'>
        <!-- Sturgian Varyag Veteran - T4R -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sturgian Varyag Veteran</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="126" />
                <skill id="Riding" value="94" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="160" />
                <skill id="Polearm" value="90" />
                <skill id="Bow" value="90" />
                <skill id="Crossbow" value="90" />
                <skill id="Throwing" value="90" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.druzhinnik" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_sword_4_t4" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <equipment slot="Item2" id="Item.bearded_axe_t3" />
                    <!-- <equipment slot="Item3" id="Item.northern_spear_3_t4" /> -->
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.nordic_helmet" />
                    <equipment slot="Cape" id="Item.brass_scale_shoulders" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_sword_4_t4" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item2" id="Item.bearded_axe_t3" />
                    <!-- <equipment slot="Item3" id="Item.northern_spear_3_t4" /> -->
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.nordic_helmet" />
                    <equipment slot="Cape" id="Item.brass_scale_shoulders" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="druzhinnik"]'>
        <!-- Sturigna Druzhinnik - T5R -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="140" />
                <skill id="Riding" value="150" />
                <skill id="OneHanded" value="170" />
                <skill id="TwoHanded" value="200" />
                <skill id="Polearm" value="120" />
                <skill id="Bow" value="120" />
                <skill id="Crossbow" value="120" />
                <skill id="Throwing" value="120" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.druzhinnik_champion" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.black_heart_2haxe_t3" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item2" id="Item.sturgia_sword_4_t4" />
                    <equipment slot="Body" id="Item.northern_coat_of_plates" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Head" id="Item.lendman_helmet_over_full_mail" />
                    <equipment slot="Cape" id="Item.brass_scale_shoulders" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                    <equipment slot="Horse" id="Item.t2_sturgia_horse" />
                    <equipment slot="HorseHarness" id="Item.chain_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_axe_t3" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item2" id="Item.sturgia_axe_5_t5" />
                    <equipment slot="Body" id="Item.northern_coat_of_plates" />
                    <equipment slot="Leg" id="Item.northern_plated_boots" />
                    <equipment slot="Head" id="Item.lendman_helmet_over_full_mail" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                    <equipment slot="Cape" id="Item.brass_scale_shoulders" />
                    <equipment slot="Horse" id="Item.t2_sturgia_horse" />
                    <equipment slot="HorseHarness" id="Item.chain_horse_harness" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="druzhinnik_champion"]'>
        <!-- Sturgian Druzhinnik Champion - T6R -->
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="180" />
                <skill id="Riding" value="200" />
                <skill id="OneHanded" value="220" />
                <skill id="TwoHanded" value="260" />
                <skill id="Polearm" value="150" />
                <skill id="Bow" value="150" />
                <skill id="Crossbow" value="150" />
                <skill id="Throwing" value="150" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.avalanche_2haxe" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.sturgia_sword_5_t5" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                    <equipment slot="Body" id="Item.northern_brass_lamellar_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                    <equipment slot="Head" id="Item.sturgian_helmet_b_close" />
                    <equipment slot="Horse" id="Item.t2_sturgia_horse" />
                    <equipment slot="HorseHarness" id="Item.chain_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_2haxe_1_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.battania_axe_3_t5" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                    <equipment slot="Body" id="Item.northern_brass_lamellar_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                    <equipment slot="Head" id="Item.sturgian_helmet_b_close" />
                    <equipment slot="Horse" id="Item.t2_sturgia_horse" />
                    <equipment slot="HorseHarness" id="Item.chain_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_2haxe_2_t5" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.sturgia_axe_5_t5" />
                    <equipment slot="Gloves" id="Item.northern_plated_gloves" />
                    <equipment slot="Body" id="Item.northern_brass_lamellar_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.brass_lamellar_shoulder_white" />
                    <equipment slot="Head" id="Item.sturgian_helmet_b_close" />
                    <equipment slot="Horse" id="Item.t2_sturgia_horse" />
                    <equipment slot="HorseHarness" id="Item.chain_horse_harness" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- VLANDIA TROOPS -->
    <!-- std Athletics, std Riding -->
    <xsl:template match='NPCCharacter[@id="vlandian_recruit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="20" />
                <skill id="Riding" value="10" />
                <skill id="OneHanded" value="30" />
                <skill id="TwoHanded" value="10" />
                <skill id="Polearm" value="30" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_levy_crossbowman" />
                <upgrade_target id="NPCCharacter.vlandian_footman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_mace_1_t2" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Item1" id="Item.peasant_pitchfork_1_t1" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_footman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Riding" value="15" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="20" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="5" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_spearman" />
                <upgrade_target id="NPCCharacter.vlandian_light_cavalry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_2_t2" />
                    <equipment slot="Item1" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Head" id="Item.open_padded_coif" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_2_t2" />
                    <equipment slot="Item1" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Head" id="Item.arming_coif" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="70" />
                <skill id="Riding" value="40" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="30" />
                <skill id="Throwing" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_billman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.sleeveless_padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.sleeveless_padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_billman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="110" />
                <skill id="Riding" value="60" />
                <skill id="OneHanded" value="90" />
                <skill id="TwoHanded" value="100" />
                <skill id="Polearm" value="80" />
                <skill id="Bow" value="15" />
                <skill id="Crossbow" value="35" />
                <skill id="Throwing" value="35" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_voulgier" />
                <upgrade_target id="NPCCharacter.vlandian_pikeman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_2haxe_1_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_padded_cloth" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_2haxe_1_t4" />
                    <equipment slot="Item1" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_padded_cloth" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_2haxe_1_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_padded_cloth" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_voulgier"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="60" />
                <skill id="OneHanded" value="80" />
                <skill id="TwoHanded" value="130" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="80" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_polearm_1_t5" />
                    <equipment slot="Item1" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item3" id="Item.western_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.white_coat_over_mail" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_polearm_1_t5" />
                    <equipment slot="Item1" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item3" id="Item.western_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.white_coat_over_mail" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_polearm_1_t5" />
                    <equipment slot="Item1" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item3" id="Item.western_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.white_coat_over_mail" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_padded_cloth" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_pikeman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="60" />
                <skill id="OneHanded" value="80" />
                <skill id="TwoHanded" value="130" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="80" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.plated_leather_coat" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Body" id="Item.plated_leather_coat" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.plated_leather_coat" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Head" id="Item.peaked_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_infantry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="70" />
                <skill id="Riding" value="40" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="30" />
                <skill id="Throwing" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_swordsman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Body" id="Item.sleeveless_padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.cervelliere_over_arming_coif" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Body" id="Item.sleeveless_padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.cervelliere_over_arming_coif" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Body" id="Item.padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.cervelliere_over_arming_coif" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_swordsman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="45" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="15" />
                <skill id="Crossbow" value="45" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_sergeant" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Item1" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.segmented_skullcap_over_padded_cloth" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Item1" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.segmented_skullcap_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item1" id="Item.reinforced_kite_shield" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.segmented_skullcap_over_padded_coif" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_sergeant"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="80" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Body" id="Item.white_coat_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.visored_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                    <equipment slot="Cape" id="Item.pauldron_cape_a" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Body" id="Item.white_coat_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.visored_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Body" id="Item.white_coat_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.visored_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                    <equipment slot="Cape" id="Item.pauldron_cape_a" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_light_cavalry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="30" />
                <skill id="Riding" value="60" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="80" />
                <skill id="Bow" value="30" />
                <skill id="Crossbow" value="35" />
                <skill id="Throwing" value="25" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_cavalry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.sleeveless_padded_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.sleeveless_padded_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.sleeveless_padded_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.light_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_cavalry"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Riding" value="120" />
                <skill id="OneHanded" value="80" />
                <skill id="TwoHanded" value="45" />
                <skill id="Polearm" value="110" />
                <skill id="Bow" value="40" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_vanguard" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.light_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_vanguard"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Riding" value="130" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="80" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="80" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.red_coat_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.visored_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.red_coat_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.visored_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.red_coat_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.visored_helmet_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.halfchain_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_levy_crossbowman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Riding" value="20" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="15" />
                <skill id="Polearm" value="20" />
                <skill id="Bow" value="5" />
                <skill id="Crossbow" value="40" />
                <skill id="Throwing" value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_crossbowman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.long_hemp_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.long_hemp_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.cloth_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_crossbowman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="70" />
                <skill id="Riding" value="40" />
                <skill id="OneHanded" value="70" />
                <skill id="TwoHanded" value="30" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_hardened_crossbowman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_b" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.leather_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.kettle_helmet_with_leather" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_b" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.leather_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.kettle_helmet_with_leather" />
                    <equipment slot="Cape" id="Item.hood" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_b" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Body" id="Item.leather_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.kettle_helmet_with_leather" />
                    <equipment slot="Cape" id="Item.hood" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_hardened_crossbowman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Riding" value="60" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="45" />
                <skill id="Polearm" value="45" />
                <skill id="Bow" value="15" />
                <skill id="Crossbow" value="100" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_sharpshooter" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_b" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Body" id="Item.leather_scale_armor" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_b" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Body" id="Item.leather_scale_armor" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_b" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Body" id="Item.leather_scale_armor" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_sharpshooter"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="80" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="130" />
                <skill id="Throwing" value="60" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_f" />
                    <equipment slot="Item1" id="Item.bolt_c" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.kettle_hat_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_f" />
                    <equipment slot="Item1" id="Item.bolt_c" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.kettle_hat_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_f" />
                    <equipment slot="Item1" id="Item.bolt_c" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.kettle_hat_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_squire"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="30" />
                <skill id="Riding" value="40" />
                <skill id="OneHanded" value="45" />
                <skill id="TwoHanded" value="10" />
                <skill id="Polearm" value="40" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_gallant" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.morningstar_mace_t3" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_1_t2" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.padded_coif" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_1_t2" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.padded_coif" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.morningstar_mace_t3" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_1_t2" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.padded_coif" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t1" civilian="true" />
                <equipment slot="Horse" id="Item.vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.light_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_gallant"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="30" />
                <skill id="Riding" value="70" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="30" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="10" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_knight" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_1_t3" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_mail" />
                    <equipment slot="Gloves" id="Item.woven_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_1_t3" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_padded_cloth" />
                    <equipment slot="Gloves" id="Item.woven_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.stripped_leather_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_knight"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="90" />
                <skill id="Riding" value="100" />
                <skill id="OneHanded" value="100" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="110" />
                <skill id="Bow" value="45" />
                <skill id="Crossbow" value="45" />
                <skill id="Throwing" value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_champion" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Body" id="Item.hauberk" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_laced_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.vlandia_chainmail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_padded_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.northern_horsemans_shield" />
                    <equipment slot="Item2" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Body" id="Item.hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_over_padded_coif" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2" civilian="true" />
                <equipment slot="Horse" id="Item.vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.chain_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_champion"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="80" />
                <skill id="Riding" value="130" />
                <skill id="OneHanded" value="130" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="160" />
                <skill id="Bow" value="20" />
                <skill id="Crossbow" value="50" />
                <skill id="Throwing" value="80" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_banner_knight" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Body" id="Item.coat_of_plates_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.full_helm_over_cloth_headwrap" />
                    <equipment slot="Gloves" id="Item.lordly_mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.coat_of_plates_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.full_helm_over_cloth_headwrap" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Body" id="Item.coat_of_plates_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.full_helm_over_cloth_headwrap" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.chain_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_banner_knight"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Riding" value="200" />
                <skill id="OneHanded" value="220" />
                <skill id="TwoHanded" value="60" />
                <skill id="Polearm" value="260" />
                <skill id="Bow" value="25" />
                <skill id="Crossbow" value="60" />
                <skill id="Throwing" value="30" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Body" id="Item.coat_of_plates_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.full_helm_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.lordly_mail_mitten" />
                    <equipment slot="Cape" id="Item.green_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Body" id="Item.coat_of_plates_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.full_helm_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.lordly_mail_mitten" />
                    <equipment slot="Cape" id="Item.green_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_lance_2_t4" />
                    <equipment slot="Item1" id="Item.heavy_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Body" id="Item.coat_of_plates_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.full_helm_over_mail_coif" />
                    <equipment slot="Gloves" id="Item.lordly_mail_mitten" />
                    <equipment slot="Cape" id="Item.green_hood" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
                <equipment slot="Horse" id="Item.t2_vlandia_horse" />
                <equipment slot="HorseHarness" id="Item.chain_barding" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- MERCENARIES -->
    <!-- std Athletics, std Riding -->

    <!-- WESTERN MERCENARIES -->
    <!-- T3 - Hired Spear -->
    <xsl:template match='NPCCharacter[@id="western_mercenary"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="75" />
                <skill id="Riding" value="55" />
                <skill id="OneHanded" value="75" />
                <skill id="TwoHanded" value="50" />
                <skill id="Polearm" value="105" />
                <skill id="Bow" value="50" />
                <skill id="Crossbow" value="50" />
                <skill id="Throwing" value="50" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.western_mercenary_t4" />
                <upgrade_target id="NPCCharacter.western_crossbow_t4" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_sword_2_t3" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                    <equipment slot="Body" id="Item.leather_tunic" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.old_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Head" id="Item.imperial_padded_coif" />
                    <equipment slot="Body" id="Item.vlandia_bandit_a" />
                    <equipment slot="Leg" id="Item.wrapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.strapped_leather_bracers" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.worn_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.buckled_wildsman_armor" />
                    <equipment slot="Leg" id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves" id="Item.plated_strip_gauntlets" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 - Hired Pike -->
    <xsl:template match='NPCCharacter[@id="western_mercenary_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="105" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="105" />
                <skill id="TwoHanded" value="70" />
                <skill id="Polearm" value="135" />
                <skill id="Bow" value="70" />
                <skill id="Crossbow" value="70" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.western_mercenary_t5" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Head" id="Item.kettle_helmet_with_leather" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.green_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_padded_cap" />
                    <equipment slot="Body" id="Item.rough_fur_over_chain" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Head" id="Item.kettle_hat_over_padded_cloth" />
                    <equipment slot="Body" id="Item.scale_armor" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 - Hired Crossbow -->
    <xsl:template match='NPCCharacter[@id="western_crossbow_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="105" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="105" />
                <skill id="TwoHanded" value="70" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="70" />
                <skill id="Crossbow" value="135" />
                <skill id="Throwing" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.western_crossbow_t5" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.pavise_shield" />
                    <equipment slot="Item3" id="Item.empire_sword_3_t3" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Body" id="Item.banded_leather_over_mail" />
                    <equipment slot="Head" id="Item.kettle_helmet_with_mail" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 - Hired Elite Pike -->
    <xsl:template match='NPCCharacter[@id="western_mercenary_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="135" />
                <skill id="Riding" value="105" />
                <skill id="OneHanded" value="140" />
                <skill id="TwoHanded" value="100" />
                <skill id="Polearm" value="170" />
                <skill id="Bow" value="100" />
                <skill id="Crossbow" value="100" />
                <skill id="Throwing" value="100" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_4_t4" />
                    <equipment slot="Head" id="Item.kettle_hat_over_mail_coif" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_mail" />
                    <equipment slot="Body" id="Item.hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.fine_pike_t4" />
                    <equipment slot="Item1" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_laced_coif" />
                    <equipment slot="Body" id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Hired Elite Crossbow -->
    <xsl:template match='NPCCharacter[@id="western_crossbow_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Hired Elite Crossbow</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="135" />
                <skill id="Riding" value="105" />
                <skill id="OneHanded" value="140" />
                <skill id="TwoHanded" value="100" />
                <skill id="Polearm" value="100" />
                <skill id="Bow" value="100" />
                <skill id="Crossbow" value="170" />
                <skill id="Throwing" value="100" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.empire_sword_2_t3" />
                    <equipment slot="Item3" id="Item.fortified_kite_shield" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item0" id="Item.crossbow_f" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Body" id="Item.hauberk" />
                    <equipment slot="Head" id="Item.kettle_hat_over_mail_coif" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- EASTERN MERCENARIES -->
    <!-- T3 - Sellsword -->
    <xsl:template match='NPCCharacter[@id="eastern_mercenary"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="70" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="30" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.eastern_mounted_mercenary_t4" />
                <upgrade_target id="NPCCharacter.eastern_mercenary_t4" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Item1"
                        id="Item.curved_round_shield" />
                    <equipment slot="Item2"
                        id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head"
                        id="Item.turban" />
                    <equipment slot="Body"
                        id="Item.khuzait_fortified_armor" />
                    <equipment slot="Leg"
                        id="Item.wrapped_shoes" />
                    <equipment slot="Gloves"
                        id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Item1"
                        id="Item.curved_round_shield" />
                    <equipment slot="Item2"
                        id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head"
                        id="Item.open_head_scarf" />
                    <equipment slot="Body"
                        id="Item.khuzait_fortified_armor" />
                    <equipment slot="Leg"
                        id="Item.wrapped_shoes" />
                    <equipment slot="Gloves"
                        id="Item.studded_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Item1"
                        id="Item.curved_round_shield" />
                    <equipment slot="Item2"
                        id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head"
                        id="Item.tight_head_scarf" />
                    <equipment slot="Body"
                        id="Item.khuzait_fortified_armor" />
                    <equipment slot="Leg"
                        id="Item.wrapped_shoes" />
                    <equipment slot="Gloves"
                        id="Item.studded_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 - Mercenary Maceman -->
    <xsl:template match='NPCCharacter[@id="eastern_mercenary_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sellsword Maceman</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="45" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="80" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="45" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.eastern_mercenary_t5" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item1"
                        id="Item.decorated_steppe_shield" />
                    <equipment slot="Item2"
                        id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head"
                        id="Item.turban" />
                    <equipment slot="Body"
                        id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Leg"
                        id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves"
                        id="Item.guarded_padded_vambrace" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item1"
                        id="Item.decorated_steppe_shield" />
                    <equipment slot="Item2"
                        id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head"
                        id="Item.open_head_scarf" />
                    <equipment slot="Body"
                        id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Leg"
                        id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves"
                        id="Item.guarded_padded_vambrace" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item1"
                        id="Item.decorated_steppe_shield" />
                    <equipment slot="Item2"
                        id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head"
                        id="Item.tight_head_scarf" />
                    <equipment slot="Body"
                        id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Leg"
                        id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves"
                        id="Item.guarded_padded_vambrace" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 - Outrider -->
    <xsl:template match='NPCCharacter[@id="eastern_mounted_mercenary_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sellsword Outrider</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="100" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="30" />
                <skill id="Polearm"
                    value="100" />
                <skill id="Bow"
                    value="100" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.eastern_mounted_mercenary_t5" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_arrows" />
                    <equipment slot="Item2"
                        id="Item.composite_steppe_bow" />
                    <equipment slot="Item3"
                        id="Item.sturgia_lance_1_t4" />
                    <equipment slot="Head"
                        id="Item.nordic_fur_cap" />
                    <equipment slot="Body"
                        id="Item.northern_padded_cloth" />
                    <equipment slot="Leg"
                        id="Item.highland_boots" />
                    <equipment slot="Gloves"
                        id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_arrows" />
                    <equipment slot="Item2"
                        id="Item.composite_steppe_bow" />
                    <equipment slot="Item3"
                        id="Item.sturgia_lance_1_t4" />
                    <equipment slot="Head"
                        id="Item.nordic_fur_cap" />
                    <equipment slot="Body"
                        id="Item.northern_padded_cloth" />
                    <equipment slot="Leg"
                        id="Item.highland_boots" />
                    <equipment slot="Gloves"
                        id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_arrows" />
                    <equipment slot="Item2"
                        id="Item.composite_steppe_bow" />
                    <equipment slot="Item3"
                        id="Item.sturgia_lance_1_t4" />
                    <equipment slot="Head"
                        id="Item.fur_hat" />
                    <equipment slot="Body"
                        id="Item.northern_padded_cloth" />
                    <equipment slot="Leg"
                        id="Item.highland_boots" />
                    <equipment slot="Gloves"
                        id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_arrows" />
                    <equipment slot="Item2"
                        id="Item.composite_steppe_bow" />
                    <equipment slot="Item3"
                        id="Item.sturgia_lance_1_t4" />
                    <equipment slot="Head"
                        id="Item.nordic_fur_cap" />
                    <equipment slot="Body"
                        id="Item.northern_padded_gambeson" />
                    <equipment slot="Leg"
                        id="Item.highland_boots" />
                    <equipment slot="Gloves"
                        id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3"
                    civilian="true" />
                <equipment slot="Horse"
                    id="Item.noble_horse_eastern" />
                <equipment slot="HorseHarness"
                    id="Item.steppe_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 - Veteran Mercenary Maceman -->
    <xsl:template match='NPCCharacter[@id="eastern_mercenary_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sellsword Elite Maceman</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="130" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="140" />
                <skill id="TwoHanded"
                    value="110" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="30" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_mace_2_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_guardian_shield" />
                    <equipment slot="Item2"
                        id="Item.northern_2hsword_t4" />
                    <equipment slot="Head"
                        id="Item.loose_wrapped_desert_helmet" />
                    <equipment slot="Body"
                        id="Item.khuzait_lamellar_strapped" />
                    <equipment slot="Leg"
                        id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves"
                        id="Item.studded_vambraces" />
                    <equipment slot="Cape"
                        id="Item.khuzait_leather_pauldron" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_mace_2_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_guardian_shield" />
                    <equipment slot="Item2"
                        id="Item.northern_2hsword_t4" />
                    <equipment slot="Head"
                        id="Item.open_desert_helmet" />
                    <equipment slot="Body"
                        id="Item.khuzait_lamellar_strapped" />
                    <equipment slot="Leg"
                        id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves"
                        id="Item.studded_vambraces" />
                    <equipment slot="Cape"
                        id="Item.khuzait_leather_pauldron" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_mace_2_t4" />
                    <equipment slot="Item1"
                        id="Item.steppe_guardian_shield" />
                    <equipment slot="Item2"
                        id="Item.northern_2hsword_t4" />
                    <equipment slot="Head"
                        id="Item.closed_desert_helmet" />
                    <equipment slot="Body"
                        id="Item.khuzait_lamellar_strapped" />
                    <equipment slot="Leg"
                        id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves"
                        id="Item.studded_vambraces" />
                    <equipment slot="Cape"
                        id="Item.a_aserai_scale_b_shoulder_b" />
                </EquipmentRoster>
                <EquipmentSet id="khuzait_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 - Veteran Outrider -->
    <xsl:template match='NPCCharacter[@id="eastern_mounted_mercenary_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sellsword Elite Outrider</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="130" />
                <skill id="OneHanded"
                    value="150" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="80" />
                <skill id="Bow"
                    value="130" />
                <skill id="Crossbow"
                    value="20" />
                <skill id="Throwing"
                    value="30" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.khuzait_noble_sword_1_t5" />
                    <equipment slot="Item1"
                        id="Item.steppe_arrows" />
                    <equipment slot="Item2"
                        id="Item.steppe_war_bow" />
                    <equipment slot="Item3"
                        id="Item.sturgia_lance_2_t5" />
                    <equipment slot="Head"
                        id="Item.nordic_fur_cap" />
                    <equipment slot="Body"
                        id="Item.sturgian_chainmale_shortsleeve" />
                    <equipment slot="Leg"
                        id="Item.reinforced_suede_boots" />
                    <equipment slot="Gloves"
                        id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3"
                    civilian="true" />
                <equipment slot="Horse"
                    id="Item.noble_horse_eastern" />
                <equipment slot="HorseHarness"
                    id="Item.steppe_fur_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- SWORD SISTERS -->
    <!-- T3 - Sisterhood Follower -->
    <xsl:template match='NPCCharacter[@id="sword_sisters_sister_t3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sword Sister Journeyman</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="70" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="65" />
                <skill id="TwoHanded"
                    value="30" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="10" />
                <skill id="Crossbow"
                    value="60" />
                <skill id="Throwing"
                    value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sword_sisters_sister_t4" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.sturgia_sword_1_t2" />
                    <equipment slot="Item1"
                        id="Item.crossbow_a" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Body"
                        id="Item.battania_civil_b" />
                    <equipment slot="Leg"
                        id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.sturgia_sword_1_t2" />
                    <equipment slot="Item1"
                        id="Item.crossbow_a" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Cape"
                        id="Item.wrapped_scarf" />
                    <equipment slot="Body"
                        id="Item.studded_leather_coat" />
                    <equipment slot="Leg"
                        id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.sturgia_sword_1_t2" />
                    <equipment slot="Item1"
                        id="Item.crossbow_a" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Cape"
                        id="Item.wrapped_scarf" />
                    <equipment slot="Body"
                        id="Item.layered_leather_tunic" />
                    <equipment slot="Leg"
                        id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T4 -  -->
    <xsl:template match='NPCCharacter[@id="sword_sisters_sister_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sword Sister Veteran</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="110" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="110" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="15" />
                <skill id="Crossbow"
                    value="90" />
                <skill id="Throwing"
                    value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sword_sisters_sister_t5" />
                <upgrade_target id="NPCCharacter.sword_sisters_sister_infantry_t5" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.narrow_sword_t3" />
                    <equipment slot="Item1"
                        id="Item.crossbow_d" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.bracketed_heater_shield" />
                    <equipment slot="Body"
                        id="Item.eastern_studded_leather" />
                    <equipment slot="Leg"
                        id="Item.battania_woodland_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.narrow_sword_t3" />
                    <equipment slot="Item1"
                        id="Item.crossbow_d" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.bracketed_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.battania_woodland_cloak" />
                    <equipment slot="Body"
                        id="Item.northern_lamellar_armor" />
                    <equipment slot="Leg"
                        id="Item.battania_woodland_boots" />
                    <equipment slot="Gloves"
                        id="Item.padded_vambrace" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.narrow_sword_t3" />
                    <equipment slot="Item1"
                        id="Item.crossbow_d" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.bracketed_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.battania_civil_cloak" />
                    <equipment slot="Body"
                        id="Item.leather_scale_armor" />
                    <equipment slot="Leg"
                        id="Item.battania_woodland_boots" />
                    <equipment slot="Gloves"
                        id="Item.padded_vambrace" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 -  -->
    <xsl:template match='NPCCharacter[@id="sword_sisters_sister_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sword Sister Gallantry</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="70" />
                <skill id="Riding"
                    value="130" />
                <skill id="OneHanded"
                    value="120" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="15" />
                <skill id="Crossbow"
                    value="150" />
                <skill id="Throwing"
                    value="20" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1"
                        id="Item.crossbow_e" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.wide_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.hood" />
                    <equipment slot="Body"
                        id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Leg"
                        id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1"
                        id="Item.crossbow_e" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.wide_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.battanian_leather_shoulder_a" />
                    <equipment slot="Body"
                        id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg"
                        id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1"
                        id="Item.crossbow_e" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.wide_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.battanian_leather_shoulder_a" />
                    <equipment slot="Body"
                        id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Leg"
                        id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
                <equipment slot="Horse"
                    id="Item.t2_empire_horse" />
                <equipment slot="HorseHarness"
                    id="Item.stripped_leather_harness" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- T5 -  -->
    <xsl:template match='NPCCharacter[@id="sword_sisters_sister_infantry_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Sword Sister Champion</xsl:attribute>
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="130" />
                <skill id="Riding"
                    value="50" />
                <skill id="OneHanded"
                    value="130" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="15" />
                <skill id="Crossbow"
                    value="150" />
                <skill id="Throwing"
                    value="20" />
            </skills>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1"
                        id="Item.crossbow_b" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.wide_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.hood" />
                    <equipment slot="Body"
                        id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Leg"
                        id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1"
                        id="Item.crossbow_b" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.wide_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.battanian_leather_shoulder_a" />
                    <equipment slot="Body"
                        id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg"
                        id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0"
                        id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1"
                        id="Item.crossbow_b" />
                    <equipment slot="Item2"
                        id="Item.bolt_b" />
                    <equipment slot="Item3"
                        id="Item.wide_heater_shield" />
                    <equipment slot="Cape"
                        id="Item.battanian_leather_shoulder_a" />
                    <equipment slot="Body"
                        id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Leg"
                        id="Item.turndown_leather_boots" />
                    <equipment slot="Gloves"
                        id="Item.steppe_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- Bandits -->

    <!-- Standard Bandits ==> std Riding/Athletics -->
    <xsl:template match='NPCCharacter[@id="looter"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <BodyProperties version="4" age="30.33" weight="0.1349" build="0.2423"
                    key="00050004402C0312367324453354621232316505203133023641312273143224018426140896594500000000000000000000000000000000000000001D043002" />
                <BodyPropertiesMax version="4" age="50.09" weight="0.5818" build="0.6065"
                    key="001CFC0CC02C3959AD8AA89C9A86CDEC9FCA8BBC8AA4CD775DACED6B7E2F8D4804E996460ECADBC9000000000000000000000000000000000000000067D48105" />
                <!--hair_tags>
                     <hair_tag name="Native Braids" />
                     </hair_tags>
                <beard_tags>
                     <beard_tag name="Cleanshaven" />
                     </beard_tags-->
            </face>
            <skills>
                <skill id="Athletics" value="30" />
                <skill id="Bow" value="20" />
                <skill id="OneHanded" value="40" />
                <skill id="Polearm" value="30" />
                <skill id="Riding" value="0" />
                <skill id="Throwing" value="40" />
                <skill id="TwoHanded" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_infantryman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.peasant_2haxe_1_t1" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_2haxe_1_t1" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v2" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.seax" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Body" id="Item.vlandia_bandit_c" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.torn_bandit_clothes" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Body" id="Item.bandit_gambeson" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_sickle_1_t1" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v2" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pitchfork_2_t1" />
                    <equipment slot="Body" id="Item.vlandia_bandit_c" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Body" id="Item.torn_bandit_clothes" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_gambeson" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pitchfork_2_t1" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.tattered_rags" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.tattered_rags" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.tattered_rags" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="deserter"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <BodyProperties version="4" age="36.33" weight="0.4454" build="0.445"
                    key="00050004402C0312367324453354621232316505203133023641312273143224028A86240896594500000000000000000000000000000000000000001D043002" />
                <BodyPropertiesMax version="4" age="71.09" weight="0.6244" build="0.6336"
                    key="001CFC0CC02C3959AD8AA89C9A86CDEC9FCA8BBC8AA4CD775DACED6B7E2F8D4807EEE6780ECADBC9000000000000000000000000000000000000000067D48105" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Bow" value="15" />
                <skill id="OneHanded" value="40" />
                <skill id="Polearm" value="20" />
                <skill id="Riding" value="30" />
                <skill id="Throwing" value="30" />
                <skill id="TwoHanded" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.imperial_trained_infantryman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Horse" id="Item.sumpter_horse" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v2" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_mace_1_t2" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Body" id="Item.vlandia_bandit_c" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.torn_bandit_clothes" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_mace_1_t2" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Body" id="Item.bandit_gambeson" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_mace_1_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v2" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_mace_1_t2" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.western_riders_kite_shield" />
                    <equipment slot="Body" id="Item.vlandia_bandit_c" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Body" id="Item.torn_bandit_clothes" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_gambeson" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Sea Raider Bandits ==> -Riding, +Athletics -->
    <xsl:template match='NPCCharacter[@id="sea_raiders_bandit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Bow" value="20" />
                <skill id="OneHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Riding" value="15" />
                <skill id="Throwing" value="30" />
                <skill id="TwoHanded" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sea_raiders_raider" />
                <upgrade_target id="NPCCharacter.sturgian_soldier" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Item1" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sea_raiders_raider"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="80" />
                <skill id="Bow" value="40" />
                <skill id="OneHanded" value="80" />
                <skill id="Polearm" value="60" />
                <skill id="Riding" value="0" />
                <skill id="Throwing" value="60" />
                <skill id="TwoHanded" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.sea_raiders_chief" />
                <upgrade_target id="NPCCharacter.varyag_veteran" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.short_sword_t3" />
                    <equipment slot="Item1" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item1" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Head" id="Item.lendman_helmet_over_mail" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item1" id="Item.northern_spear_2_t3" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.short_sword_t3" />
                    <equipment slot="Item1" id="Item.northern_spear_2_t3" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.short_sword_t3" />
                    <equipment slot="Item1" id="Item.northern_spear_2_t3" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Head" id="Item.lendman_helmet_over_mail" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sea_raiders_chief"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="110" />
                <skill id="Bow" value="80" />
                <skill id="OneHanded" value="160" />
                <skill id="Polearm" value="40" />
                <skill id="Riding" value="40" />
                <skill id="Throwing" value="120" />
                <skill id="TwoHanded" value="80" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.druzhinnik" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Head" id="Item.northern_warlord_helmet" />
                    <equipment slot="Cape" id="Item.bearskin" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Head" id="Item.lendman_helmet_over_mail" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Body" id="Item.hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Item3" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.nasalhelm_over_mail" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sea_raiders_boss"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_sturgia" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="140" />
                <skill id="TwoHanded" value="150" />
                <skill id="Polearm" value="50" />
                <skill id="Bow" value="50" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.sturgia_sword_4_t4" />
                    <equipment slot="Item2" id="Item.northern_round_shield" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.sturgia_2haxe_1_t4" />
                    <equipment slot="Item3" id="Item.highland_throwing_axe_1_t2" />
                    <equipment slot="Head" id="Item.northern_goggled_helmet" />
                    <equipment slot="Cape" id="Item.brass_scale_shoulders" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Mountain Bandits ==> -Riding, +Athletics -->
    <xsl:template match='NPCCharacter[@id="mountain_bandits_bandit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Bow" value="20" />
                <skill id="OneHanded" value="40" />
                <skill id="Polearm" value="40" />
                <skill id="Riding" value="15" />
                <skill id="Throwing" value="15" />
                <skill id="TwoHanded" value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.mountain_bandits_raider" />
                <upgrade_target id="NPCCharacter.vlandian_infantry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Body" id="Item.baggy_trunks" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Body" id="Item.baggy_trunks" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.armored_baggy_trunks" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.sleeveless_studded_fur_armor" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.falchion_sword_t2" />
                    <equipment slot="Item2" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.studded_fur_armor" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="mountain_bandits_raider"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Bow" value="40" />
                <skill id="OneHanded" value="40" />
                <skill id="Polearm" value="70" />
                <skill id="Riding" value="20" />
                <skill id="Throwing" value="70" />
                <skill id="TwoHanded" value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_billman" />
                <upgrade_target id="NPCCharacter.mountain_bandits_chief" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.old_kite_shield" />
                    <equipment slot="Item2" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_2_t3" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                    <equipment slot="Body" id="Item.patched_gambeson" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item1" id="Item.old_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_2_t3" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                    <equipment slot="Body" id="Item.fur_coat_over_tunic" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item1" id="Item.old_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_2_t3" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.patched_gambeson" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_2_t3" />
                    <equipment slot="Head" id="Item.northern_fur_cap" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Item2" id="Item.western_spear_3_t3" />
                    <equipment slot="Item3" id="Item.western_javelin_2_t3" />
                    <equipment slot="Body" id="Item.long_fur_coat" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="mountain_bandits_chief"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Bow" value="80" />
                <skill id="OneHanded" value="100" />
                <skill id="Polearm" value="110" />
                <skill id="Riding" value="120" />
                <skill id="Throwing" value="120" />
                <skill id="TwoHanded" value="100" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.vlandian_champion" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.vlandia_mace_1_t2" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.old_kite_shield" />
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.banded_leather_over_mail" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Horse" id="Item.battania_horse" />
                    <equipment slot="HorseHarness" id="Item.battania_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.old_kite_shield" />
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.battania_woodland_chainmail" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                    <equipment slot="Horse" id="Item.battania_horse" />
                    <equipment slot="HorseHarness" id="Item.battania_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.buckled_wildsman_armor" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.battania_cloak_furr" />
                    <equipment slot="Horse" id="Item.battania_horse" />
                    <equipment slot="HorseHarness" id="Item.battania_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Body" id="Item.empire_horseman_armor" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_headcloth" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.battania_cloak_furr" />
                    <equipment slot="Horse" id="Item.battania_horse" />
                    <equipment slot="HorseHarness" id="Item.battania_horse_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.western_spear_4_t4" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Item0" id="Item.vlandia_axe_2_t4" />
                    <equipment slot="Item3" id="Item.northern_javelin_3_t4" />
                    <equipment slot="Body" id="Item.western_scale_mail" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_headcloth" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.battania_woodland_cloak" />
                    <equipment slot="Horse" id="Item.battania_horse" />
                    <equipment slot="HorseHarness" id="Item.battania_horse_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="mountain_bandits_boss"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_battania" />
            </face>
            <skills>
                <skill id="Athletics" value="150" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="120" />
                <skill id="TwoHanded" value="50" />
                <skill id="Polearm" value="50" />
                <skill id="Bow" value="60" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="150" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.empire_sword_4_t4" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1" id="Item.battered_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.veteran_mercenary_armor" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                    <equipment slot="Cape" id="Item.battania_shoulder_furr" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Forest Bandits ==> -Riding, +Athletics -->
    <xsl:template match='NPCCharacter[@id="forest_bandits_bandit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Bow" value="40" />
                <skill id="OneHanded" value="20" />
                <skill id="Polearm" value="20" />
                <skill id="Riding" value="30" />
                <skill id="Throwing" value="20" />
                <skill id="TwoHanded" value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.forest_bandits_raider" />
                <upgrade_target id="NPCCharacter.battanian_raider" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.simple_back_sword_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.simple_back_sword_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.simple_back_sword_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.bandit_fur_a" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.bandit_fur_a" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.simple_back_sword_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.torn_bandit_clothes" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_1_t2" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.torn_bandit_clothes" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="forest_bandits_raider"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="50" />
                <skill id="Bow" value="70" />
                <skill id="OneHanded" value="70" />
                <skill id="Polearm" value="30" />
                <skill id="Riding" value="0" />
                <skill id="Throwing" value="40" />
                <skill id="TwoHanded" value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.forest_bandits_chief" />
                <upgrade_target id="NPCCharacter.battanian_falxman" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.narrow_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.bandit_fur_a" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.narrow_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.bandit_gambeson" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.padded_leather_overcoat" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.bandit_fur_a" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.rough_fur_armor" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.cleaver_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.rough_fur_armor" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.short_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.short_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.padded_leather_overcoat" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Head" id="Item.wrapped_headcloth" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.short_sword_t3" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.padded_leather_overcoat" />
                    <equipment slot="Leg" id="Item.ragged_boots" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="forest_bandits_chief"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="110" />
                <skill id="Bow" value="150" />
                <skill id="OneHanded" value="120" />
                <skill id="Polearm" value="80" />
                <skill id="Riding" value="0" />
                <skill id="Throwing" value="80" />
                <skill id="TwoHanded" value="80" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.battanian_fian" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.vlandia_mace_1_t2" />
                    <equipment slot="Item1" id="Item.throwing_stone" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.rough_fur_over_chain" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                    <equipment slot="Gloves" id="Item.woven_leather_bracers" />
                    <equipment slot="Head" id="Item.wolfhead" />
                    <equipment slot="Cape" id="Item.wolf_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.battania_woodland_chainmail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.woven_leather_bracers" />
                    <equipment slot="Cape" id="Item.battania_cloak_furr" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.battania_mercenary_armor" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Head" id="Item.bearhead" />
                    <equipment slot="Cape" id="Item.bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Cape" id="Item.bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item3" id="Item.barbed_arrows" />
                    <equipment slot="Body" id="Item.buckled_wildsman_armor" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Head" id="Item.bearhead" />
                    <equipment slot="Cape" id="Item.bearskin" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="forest_bandits_boss"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_vlandia" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="140" />
                <skill id="TwoHanded" value="50" />
                <skill id="Polearm" value="50" />
                <skill id="Bow" value="150" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.battania_sword_4_t4" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battania_axe_2_t4" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.woodland_yew_bow" />
                    <equipment slot="Item3" id="Item.bodkin_arrows_a" />
                    <equipment slot="Body" id="Item.battania_woodland_chainmail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Head" id="Item.imperial_mail_coif" />
                    <equipment slot="Cape" id="Item.battania_cloak_furr" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Desert Bandits ==> +Riding, -Athletics -->
    <xsl:template match='NPCCharacter[@id="desert_bandits_bandit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="20" />
                <skill id="Bow" value="20" />
                <skill id="OneHanded" value="30" />
                <skill id="Polearm" value="40" />
                <skill id="Riding" value="20" />
                <skill id="Throwing" value="0" />
                <skill id="TwoHanded" value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.desert_bandits_raider" />
                <upgrade_target id="NPCCharacter.aserai_skirmisher" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item0" id="Item.aserai_mace_1_t2" />
                    <equipment slot="Body" id="Item.desert_robe" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Head" id="Item.turban" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item0" id="Item.aserai_mace_1_t2" />
                    <equipment slot="Body" id="Item.aserai_civil_f" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.tuareg" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item0" id="Item.aserai_mace_1_t2" />
                    <equipment slot="Body" id="Item.layered_robe" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Head" id="Item.turban" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item0" id="Item.aserai_mace_1_t2" />
                    <equipment slot="Body" id="Item.desert_robe" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Head" id="Item.turban" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="desert_bandits_raider"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Bow" value="80" />
                <skill id="OneHanded" value="60" />
                <skill id="Polearm" value="80" />
                <skill id="Riding" value="40" />
                <skill id="Throwing" value="0" />
                <skill id="TwoHanded" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.desert_bandits_chief" />
                <upgrade_target id="NPCCharacter.aserai_mameluke_cavalry" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.open_head_scarf" />
                    <equipment slot="Body" id="Item.desert_padded_cloth" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.open_head_scarf" />
                    <equipment slot="Body" id="Item.desert_padded_cloth" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.tied_head_wrapping" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item0" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.tied_head_wrapping" />
                    <equipment slot="Body" id="Item.layered_robe" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item0" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.turban" />
                    <equipment slot="Body" id="Item.layered_robe" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item0" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.woven_turban" />
                    <equipment slot="Body" id="Item.desert_padded_cloth" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="desert_bandits_chief"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="100" />
                <skill id="Bow" value="40" />
                <skill id="OneHanded" value="100" />
                <skill id="Polearm" value="120" />
                <skill id="Riding" value="80" />
                <skill id="Throwing" value="100" />
                <skill id="TwoHanded" value="80" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.aserai_veteran_faris" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.desert_robe_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.trailed_desert_helmet" />
                    <equipment slot="Body" id="Item.desert_robe_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.open_desert_helmet" />
                    <equipment slot="Body" id="Item.desert_robe_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.loose_wrapped_desert_helmet" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.lordly_mail_mitten" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.desert_helmet" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.lordly_mail_mitten" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.closed_desert_helmet" />
                    <equipment slot="Body" id="Item.stitched_leather_over_mail" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item2" id="Item.eastern_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.desert_helmet_with_mail" />
                    <equipment slot="Body" id="Item.desert_scale_armor" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Gloves" id="Item.reinforced_mail_mitten" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="desert_bandits_boss"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_aserai" />
            </face>
            <skills>
                <skill id="Athletics" value="130" />
                <skill id="Riding" value="80" />
                <skill id="OneHanded" value="160" />
                <skill id="TwoHanded" value="50" />
                <skill id="Polearm" value="130" />
                <skill id="Bow" value="50" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item1" id="Item.oval_shield" />
                    <equipment slot="Item2" id="Item.eastern_throwing_spear_2_t4" />
                    <equipment slot="Head" id="Item.open_desert_helmet" />
                    <equipment slot="Body" id="desert_robe_over_mail" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Cape" id="Item.desert_leather_shoulderpad" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Horse" id="Item.desert_war_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Steppe Bandits ==> +Riding, -Athletics -->
    <xsl:template match='NPCCharacter[@id="steppe_bandits_bandit"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="20" />
                <skill id="Bow" value="0" />
                <skill id="OneHanded" value="30" />
                <skill id="Polearm" value="40" />
                <skill id="Riding" value="40" />
                <skill id="Throwing" value="20" />
                <skill id="TwoHanded" value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.steppe_bandits_raider" />
                <upgrade_target id="NPCCharacter.khuzait_raider" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Body" id="Item.steppe_armor" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Body" id="Item.steppe_armor" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Horse" id="Item.sumpter_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item0" id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Horse" id="Item.sumpter_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item0" id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Body" id="Item.bandit_gambeson" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Horse" id="Item.sumpter_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="steppe_bandits_raider"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Bow" value="80" />
                <skill id="OneHanded" value="70" />
                <skill id="Polearm" value="80" />
                <skill id="Riding" value="100" />
                <skill id="Throwing" value="40" />
                <skill id="TwoHanded" value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.steppe_bandits_chief" />
                <upgrade_target id="NPCCharacter.khuzait_lancer" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.nomad_padded_hood" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.nomad_padded_hood" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.khuzait_leather_stitched" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item0" id="Item.broad_ild_sword_t3" />
                    <equipment slot="Item2" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.khuzait_leather_stitched" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="steppe_bandits_chief"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="60" />
                <skill id="Bow" value="100" />
                <skill id="OneHanded" value="110" />
                <skill id="Polearm" value="100" />
                <skill id="Riding" value="100" />
                <skill id="Throwing" value="60" />
                <skill id="TwoHanded" value="50" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.khuzait_kheshig" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Body" id="Item.khuzait_leather_stitched" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.nomad_helmet" />
                    <equipment slot="Body" id="Item.khuzait_leather_stitched" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.pointed_falchion_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.nomad_helmet" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item1" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Item2" id="Item.composite_steppe_bow" />
                    <equipment slot="Item3" id="Item.default_arrows" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_half_barding" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="steppe_bandits_boss"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_khuzait" />
            </face>
            <skills>
                <skill id="Athletics" value="80" />
                <skill id="Riding" value="100" />
                <skill id="OneHanded" value="80" />
                <skill id="TwoHanded" value="40" />
                <skill id="Polearm" value="140" />
                <skill id="Bow" value="160" />
                <skill id="Crossbow" value="20" />
                <skill id="Throwing" value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.khuzait_polearm_1_t4" />
                    <equipment slot="Item1" id="Item.composite_steppe_bow" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Body" id="Item.eastern_stitched_leather_coat" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Caravan Ambush Bandits -->
    <xsl:template match='NPCCharacter[@id="mounted_pillager"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <BodyProperties version="4" age="36.33" weight="0.4454" build="0.445"
                    key="00050004402C0312367324453354621232316505203133023641312273143224028A86240896594500000000000000000000000000000000000000001D043002" />
                <BodyPropertiesMax version="4" age="71.09" weight="0.6244" build="0.6336"
                    key="001CFC0CC02C3959AD8AA89C9A86CDEC9FCA8BBC8AA4CD775DACED6B7E2F8D4807EEE6780ECADBC9000000000000000000000000000000000000000067D48105" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Riding" value="40" />
                <skill id="OneHanded" value="20" />
                <skill id="TwoHanded" value="15" />
                <skill id="Polearm" value="10" />
                <skill id="Bow" value="30" />
                <skill id="Crossbow" value="5" />
                <skill id="Throwing" value="15" />
            </skills>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v2" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v2" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Gloves" id="Item.ragged_armwraps" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="mounted_ransacker"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_empire" />
            </face>
            <skills>
                <skill id="Athletics" value="40" />
                <skill id="Riding" value="70" />
                <skill id="OneHanded" value="40" />
                <skill id="TwoHanded" value="30" />
                <skill id="Polearm" value="70" />
                <skill id="Bow" value="30" />
                <skill id="Crossbow" value="10" />
                <skill id="Throwing" value="70" />
            </skills>
            <Equipments>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.wrapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_bit_axe_t2" />
                    <equipment slot="Item1" id="Item.old_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_spear_t2" />
                    <equipment slot="Head" id="Item.arming_coif" />
                    <equipment slot="Body" id="Item.bandit_fur_a" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.simple_back_sword_t2" />
                    <equipment slot="Item2" id="Item.imperial_spear_t2" />
                    <equipment slot="Body" id="Item.bandit_fur_b" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.ragged_armwraps" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.simple_back_sword_t2" />
                    <equipment slot="Item2" id="Item.imperial_spear_t2" />
                    <equipment slot="Body" id="Item.bandit_fur_b" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.ragged_armwraps" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- Militia (No Athletics/Riding Buffs/Nerfs) -->
    <xsl:template match='NPCCharacter[@id="aserai_militia_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.aserai_civil_e_hscarf" />
                    <equipment slot="Body" id="Item.aserai_civil_a" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.aserai_civil_hscarf_b" />
                    <equipment slot="Body" id="Item.aserai_civil_e" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.turban" />
                    <equipment slot="Body" id="Item.aserai_civil_d" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.turban" />
                    <equipment slot="Body" id="Item.aserai_civil_d" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_militia_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.tribal_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.tribal_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Body" id="Item.aserai_horseman_armor" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.tribal_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Head" id="Item.closed_head_scarf" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.tribal_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Head" id="Item.closed_head_scarf" />
                    <equipment slot="Body" id="Item.desert_padded_cloth" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_militia_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.desert_oval_shield" />
                    <equipment slot="Head" id="Item.aserai_civil_hscarf_a" />
                    <equipment slot="Body" id="Item.aserai_civil_a" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Item2" id="Item.desert_oval_shield" />
                    <equipment slot="Head" id="Item.aserai_civil_hscarf_b" />
                    <equipment slot="Body" id="Item.layered_robe" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.desert_oval_shield" />
                    <equipment slot="Head" id="Item.aserai_civil_hscarf_a" />
                    <equipment slot="Body" id="Item.aserai_civil_e" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.desert_oval_shield" />
                    <equipment slot="Head" id="Item.open_desert_helmet" />
                    <equipment slot="Body" id="Item.aserai_civil_e" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="aserai_militia_veteran_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item2" id="Item.oval_shield" />
                    <equipment slot="Head" id="Item.open_head_scarf" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.aserai_sword_2_t2" />
                    <equipment slot="Item2" id="Item.oval_shield" />
                    <equipment slot="Head" id="Item.woven_turban" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.aserai_mace_2_t2" />
                    <equipment slot="Item2" id="Item.oval_shield" />
                    <equipment slot="Head" id="Item.woven_turban" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.aserai_axe_2_t2" />
                    <equipment slot="Item2" id="Item.oval_shield" />
                    <equipment slot="Head" id="Item.open_desert_helmet" />
                    <equipment slot="Body" id="Item.desert_padded_cloth" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_militia_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_a" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Cape" id="Item.hood" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_a" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Body" id="Item.long_hemp_tunic" />
                    <equipment slot="Cape" id="Item.hood" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_a" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.long_hemp_tunic" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.crossbow_a" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.bandit_envelope_dress_v1" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_militia_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_c" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.padded_leather_shirt" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_c" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Head" id="Item.kettle_hat_over_padded_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.leather_coat_over_cloth" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_c" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Head" id="Item.kettle_hat_over_padded_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.leather_coat_over_cloth" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.crossbow_c" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.bolt_a" />
                    <equipment slot="Item3" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Head" id="Item.padded_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.sleeveless_padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_militia_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_2_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Cape" id="Item.hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.peasant_pitchfork_1_t1" />
                    <equipment slot="Item1" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Item2" id="Item.heavy_heater_shield" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Item3" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.hood" />
                    <equipment slot="Body" id="Item.long_woolen_tunic" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Item3" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.hood" />
                    <equipment slot="Body" id="Item.long_woolen_tunic" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="vlandian_militia_veteran_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item2" id="Item.heavy_heater_shield" />
                    <equipment slot="Head" id="Item.arming_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.padded_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_3_t3" />
                    <equipment slot="Item1" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Head" id="Item.open_padded_coif" />
                    <equipment slot="Gloves" id="Item.padded_mitten" />
                    <equipment slot="Body" id="Item.padded_short_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_spear_1_t2" />
                    <equipment slot="Item1" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Head" id="Item.arming_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.leather_coat" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.western_spear_2_t2" />
                    <equipment slot="Item1" id="Item.vlandia_axe_1_t3" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Head" id="Item.open_padded_coif" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Body" id="Item.padded_leather_shirt" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_militia_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Body" id="Item.battania_civil_a" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Body" id="Item.battania_civil_c" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_militia_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.battania_axe_1_t2" />
                    <equipment slot="Body" id="Item.long_fur_coat" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.battania_axe_1_t2" />
                    <equipment slot="Body" id="Item.long_fur_coat" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.battania_sword_1_t2" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.battania_sword_1_t2" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_militia_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.old_kite_shield" />
                    <equipment slot="Body" id="Item.battania_civil_a" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_sickle_1_t1" />
                    <equipment slot="Item2" id="Item.old_kite_shield" />
                    <equipment slot="Body" id="Item.battania_civil_a" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.battania_cloak" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.old_kite_shield" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.old_kite_shield" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                    <equipment slot="Body" id="Item.battania_civil_b" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="battanian_militia_veteran_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.battania_large_shield_c" />
                    <equipment slot="Item2" id="Item.battania_sword_1_t2" />
                    <equipment slot="Head" id="Item.leather_studdedhelm" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.battania_large_shield_c" />
                    <equipment slot="Item2" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.battania_large_shield_c" />
                    <equipment slot="Item2" id="Item.battania_sword_1_t2" />
                    <equipment slot="Head" id="Item.leather_studdedhelm" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.military_fork_t2" />
                    <equipment slot="Item1" id="Item.battania_large_shield_c" />
                    <equipment slot="Item2" id="Item.battania_sword_1_t2" />
                    <equipment slot="Head" id="Item.leather_studdedhelm" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Cape" id="Item.battania_shoulder_strap_cloak" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_militia_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Body" id="Item.hemp_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Body" id="Item.peasant_costume" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.merchants_hat" />
                    <equipment slot="Body" id="Item.tied_cloth_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.merchants_hat" />
                    <equipment slot="Body" id="Item.tied_cloth_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_militia_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.imperial_padded_coif" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_e" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_bit_axe_t2" />
                    <equipment slot="Head" id="Item.imperial_open_mail_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_a" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.imperial_leather_coif" />
                    <equipment slot="Body" id="Item.leather_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.imperial_leather_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_f" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_militia_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.peasant_sickle_1_t1" />
                    <equipment slot="Item2" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Body" id="Item.tunic_with_shoulder_pads" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.peasant_sickle_1_t1" />
                    <equipment slot="Item2" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Head" id="Item.laced_cloth_coif" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Item2" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.bandit_leather_water_flask" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.empire_mace_1_t2" />
                    <equipment slot="Item2" id="Item.leather_bound_kite_shield" />
                    <equipment slot="Head" id="Item.laced_cloth_coif" />
                    <equipment slot="Body" id="Item.hemp_tunic" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="imperial_militia_veteran_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item2" id="Item.reinforced_kite_shield" />
                    <equipment slot="Head" id="Item.imperial_open_mail_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_b" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item2" id="Item.reinforced_kite_shield" />
                    <equipment slot="Head" id="Item.imperial_padded_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_c" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item2" id="Item.reinforced_kite_shield" />
                    <equipment slot="Head" id="Item.leather_cap" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_d" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.imperial_spear_t2" />
                    <equipment slot="Item1" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item2" id="Item.reinforced_kite_shield" />
                    <equipment slot="Head" id="Item.imperial_padded_coif" />
                    <equipment slot="Body" id="Item.empire_warrior_padded_armor_d" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Leg" id="Item.empire_horseman_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_militia_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.roughcloth_shortcoat" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.northern_tunic" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.northern_tunic" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_militia_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.nordic_padded_cloth" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.northern_fur_cap" />
                    <equipment slot="Body" id="Item.heavy_nordic_tunic" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nordic_shortbow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.northern_leather_vest" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.heavy_nordic_tunic" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_militia_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <equipment slot="Item2" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Head" id="Item.nordic_leather_cap" />
                    <equipment slot="Body" id="Item.northern_tunic" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <equipment slot="Item2" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Body" id="Item.northern_tunic" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <equipment slot="Item2" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.nordic_fur_cap" />
                    <equipment slot="Body" id="Item.tundra_tunic" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.viking_round_shield" />
                    <equipment slot="Item2" id="Item.peasant_hammer_1_t1" />
                    <equipment slot="Head" id="Item.nordic_leather_cap" />
                    <equipment slot="Body" id="Item.roughcloth_shortcoat" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="sturgian_militia_veteran_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.small_bit_axe_t2" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Body" id="Item.nordic_sloven" />
                    <equipment slot="Leg" id="Item.battania_fur_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.small_bit_axe_t2" />
                    <equipment slot="Head" id="Item.nasalhelm_over_leather" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Body" id="Item.nordic_sloven" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.small_bit_axe_t2" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Body" id="Item.nordic_sloven" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.roughhide_cap" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Body" id="Item.nordic_sloven" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_militia_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_pickaxe_1_t1" />
                    <equipment slot="Head" id="Item.nomad_cap" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.nomad_padded_hood" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_militia_veteran_archer"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_mace_1_t2" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.steppe_armor" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.steppe_armor" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.khuzait_belt_leather" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_wrapped_armguards" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_militia_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Item2" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hammer_2_t1" />
                    <equipment slot="Item2" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.khuzait_civil_coat_b" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.peaked_fur_hood" />
                    <equipment slot="Body" id="Item.steppe_armor" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.peasant_hatchet_1_t1" />
                    <equipment slot="Item2" id="Item.battered_kite_shield" />
                    <equipment slot="Head" id="Item.peaked_fur_hood" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='NPCCharacter[@id="khuzait_militia_veteran_spearman"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills></skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Item2" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Item2" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.crude_leather_armor" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Item2" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Head" id="Item.fur_hood" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Item2" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Head" id="Item.fur_hood" />
                    <equipment slot="Body" id="Item.khuzait_sturdy_armor" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Gloves" id="Item.eastern_plated_leather_vambraces" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>


    <!-- Minor Factions -->

    <!-- Ghilman - Aserai ==> +Riding, -Athletics -->
    <!-- Koleman -->
    <xsl:template match='NPCCharacter[@id="ghilman_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="20" />
                <skill id="Bow"
                    value="5" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Riding"
                    value="40" />
                <skill id="Throwing"
                    value="5" />
                <skill id="TwoHanded"
                    value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.ghilman_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item2" id="Item.bound_desert_round_shield" />
                    <equipment slot="Body" id="Item.eastern_silk_clothing" />
                    <equipment slot="Leg" id="Item.fine_town_boots" />
                    <equipment slot="Head" id="Item.desert_headdress" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.aseran_village_harness" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Ghilman -->
    <xsl:template match='NPCCharacter[@id="ghilman_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="70" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="60" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="80" />
                <skill id="Bow"
                    value="10" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.ghilman_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item1" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Item2" id="Item.bound_desert_round_shield" />
                    <equipment slot="Head" id="Item.desert_headdress" />
                    <equipment slot="Body" id="Item.aserai_archer_armor" />
                    <equipment slot="Gloves" id="Item.decorated_imperial_gauntlets" />
                    <equipment slot="Leg" id="Item.decorated_imperial_boots" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.half_mail_and_plate_barding" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Ghulam -->
    <xsl:template match='NPCCharacter[@id="ghilman_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="80" />
                <skill id="Riding"
                    value="100" />
                <skill id="OneHanded"
                    value="90" />
                <skill id="TwoHanded"
                    value="50" />
                <skill id="Polearm"
                    value="110" />
                <skill id="Bow"
                    value="15" />
                <skill id="Crossbow"
                    value="35" />
                <skill id="Throwing"
                    value="45" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item1" id="Item.aserai_mace_4_t4" />
                    <equipment slot="Item2" id="Item.tribal_steppe_shield" />
                    <equipment slot="Head" id="Item.southern_lord_helmet" />
                    <equipment slot="Body" id="Item.desert_scale_armor" />
                    <equipment slot="Leg" id="Item.lamellar_plate_boots" />
                    <equipment slot="Gloves" id="Item.lamellar_plate_gauntlets" />
                    <equipment slot="Cape" id="Item.imperial_lamellar_shoulders" />
                    <equipment slot="Horse" id="Item.camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- galloglass - battania ==> -Riding, +Athletics -->
    <!-- Skene -->
    <xsl:template match='NPCCharacter[@id="galloglass_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="20" />
                <skill id="Bow"
                    value="10" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="Polearm"
                    value="20" />
                <skill id="Riding"
                    value="30" />
                <skill id="Throwing"
                    value="40" />
                <skill id="TwoHanded"
                    value="20" />
                <skill id="Crossbow"
                    value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.galloglass_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.western_javelin_1_t2" />
                    <equipment slot="Item2" id="Item.battania_targe_b" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.leather_studdedhelm_over_thinhide" />
                    <equipment slot="Body" id="Item.battania_woodland_outfit" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Kern -->
    <xsl:template match='NPCCharacter[@id="galloglass_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="50" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="20" />
                <skill id="Throwing"
                    value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.galloglass_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Body" id="Item.battania_woodland_chainmail" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.battania_woodland_cloak" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Body" id="Item.battania_woodland_chainmail" />
                    <equipment slot="Leg" id="Item.battania_leather_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.battania_targe_b" />
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Head" id="Item.battania_fur_helmet" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Body" id="Item.mail_shirt" />
                    <equipment slot="Leg" id="Item.battania_woodland_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Redshank -->
    <xsl:template match='NPCCharacter[@id="galloglass_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="80" />
                <skill id="Riding"
                    value="45" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="60" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="120" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.highland_riders_shield" />
                    <equipment slot="Item3" id="Item.battle_axe_t4" />
                    <equipment slot="Head" id="Item.ridged_northernhelm" />
                    <equipment slot="Body" id="Item.hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.highland_riders_shield" />
                    <equipment slot="Item3" id="Item.battle_axe_t4" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Body" id="Item.battania_mercenary_armor" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.battania_cloak_furr" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.northern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.highland_riders_shield" />
                    <equipment slot="Item3" id="Item.battle_axe_t4" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Body" id="Item.battania_mercenary_armor" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.bearskin" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- lost legion -->
    <!-- Hastati -->
    <xsl:template match='NPCCharacter[@id="legion_of_the_betrayed_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="5" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="20" />
                <skill id="Polearm"
                    value="20" />
                <skill id="Bow"
                    value="15" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.legion_of_the_betrayed_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_1_t2" />
                    <equipment slot="Body" id="Item.woven_leather_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_1_t2" />
                    <equipment slot="Body" id="Item.woven_leather_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_1_t2" />
                    <equipment slot="Body" id="Item.woven_leather_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_1_t2" />
                    <equipment slot="Item1" id="Item.bound_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_1_t2" />
                    <equipment slot="Body" id="Item.woven_leather_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Principes -->
    <xsl:template match='NPCCharacter[@id="legion_of_the_betrayed_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="80" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="30" />
                <skill id="Crossbow"
                    value="30" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.legion_of_the_betrayed_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_2_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_2_t3" />
                    <equipment slot="Body" id="Item.basic_imperial_leather_armor" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_3_t3" />
                    <equipment slot="Item1" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_2_t3" />
                    <equipment slot="Body" id="Item.eastern_studded_leather" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Head" id="Item.tall_helmet" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Cape" id="Item.empire_warrior_padded_armor_shoulder" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Triarii -->
    <xsl:template match='NPCCharacter[@id="legion_of_the_betrayed_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="90" />
                <skill id="Riding"
                    value="45" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="50" />
                <skill id="Polearm"
                    value="100" />
                <skill id="Bow"
                    value="45" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="80" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_5_t4" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Body" id="Item.imperial_lamellar_over_leather" />
                    <equipment slot="Leg" id="Item.lamellar_plate_boots" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Gloves" id="Item.lamellar_plate_gauntlets" />
                    <equipment slot="Cape" id="Item.pauldron_cape_a" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_sword_4_t4" />
                    <equipment slot="Item1" id="Item.stronger_reinforced_kite_shield" />
                    <equipment slot="Item2" id="Item.imperial_throwing_spear_1_t4" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.lamellar_plate_boots" />
                    <equipment slot="Head" id="Item.plumed_helmet" />
                    <equipment slot="Gloves" id="Item.lamellar_plate_gauntlets" />
                    <equipment slot="Cape" id="Item.pauldron_cape_a" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Skolderbrotva - Sturgia  ==> -Riding, +Athletics -->
    <!-- Skolder Recruit -->
    <xsl:template match='NPCCharacter[@id="skolderbrotva_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="20" />
                <skill id="Riding"
                    value="15" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="20" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="15" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.skolderbrotva_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.northern_scouts_shield" />
                    <equipment slot="Item2" id="Item.highland_throwing_axe_1_t2" />
                    <equipment slot="Item3" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Body" id="Item.stitched_leather_vest" />
                    <equipment slot="Head" id="Item.northern_goggled_helmet" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.northern_scouts_shield" />
                    <equipment slot="Item2" id="Item.highland_throwing_axe_1_t2" />
                    <equipment slot="Item3" id="Item.sturgia_axe_2_t2" />
                    <equipment slot="Body" id="Item.stitched_leather_vest" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Skolder Warrior Broda -->
    <xsl:template match='NPCCharacter[@id="skolderbrotva_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="30" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="70" />
                <skill id="Bow"
                    value="30" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.skolderbrotva_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_2_t3" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item2" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Item3" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Head" id="closed_goggled_helmet" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_2_t3" />
                    <equipment slot="Item1" id="Item.leather_round_shield" />
                    <equipment slot="Item2" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Item3" id="Item.sturgia_axe_3_t3" />
                    <equipment slot="Head" id="closed_goggled_helmet" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.buttoned_leather_bracers" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Skolder Veteran Broda -->
    <xsl:template match='NPCCharacter[@id="skolderbrotva_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="30" />
                <skill id="OneHanded"
                    value="110" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="110" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="100" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_3_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Item3" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Head" id="sturgian_lord_helmet_b" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.northern_spear_3_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.northern_throwing_axe_1_t1" />
                    <equipment slot="Item3" id="Item.sturgia_axe_4_t4" />
                    <equipment slot="Head" id="sturgian_lord_helmet_b" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.reinforced_leather_vambraces" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- free company - vlandia -->
    <!-- Boar Novice -->
    <xsl:template match='NPCCharacter[@id="company_of_the_boar_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="20" />
                <skill id="Bow"
                    value="5" />
                <skill id="Crossbow"
                    value="40" />
                <skill id="Throwing"
                    value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.company_of_the_boar_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Item3" id="Item.small_heater_shield" />
                    <equipment slot="Body" id="Item.layered_leather_tunic" />
                    <equipment slot="Head" id="Item.kettle_helmet_over_arming_coif" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Cape" id="Item.battania_woodland_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Boar Veteran -->
    <xsl:template match='NPCCharacter[@id="company_of_the_boar_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="70" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="30" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="10" />
                <skill id="Crossbow"
                    value="70" />
                <skill id="Throwing"
                    value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.company_of_the_boar_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_b" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.vlandia_sword_1_t2" />
                    <equipment slot="Item3" id="Item.flat_heater_shield" />
                    <equipment slot="Head" id="Item.segmented_cervelliere_over_laced_coif" />
                    <equipment slot="Body" id="Item.aketon" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Cape" id="Item.battania_woodland_cloak" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Boar Champion -->
    <xsl:template match='NPCCharacter[@id="company_of_the_boar_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.villager_vlandia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="15" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="45" />
                <skill id="Crossbow"
                    value="100" />
                <skill id="Throwing"
                    value="100" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.crossbow_d" />
                    <equipment slot="Item1" id="Item.bolt_a" />
                    <equipment slot="Item2" id="Item.vlandia_mace_2_t4" />
                    <equipment slot="Item3" id="Item.pavise_shield" />
                    <equipment slot="Head" id="Item.segmented_cervelliere_over_mail_coif" />
                    <equipment slot="Body" id="Item.sleeveless_padded_coat" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.battania_woodland_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- beni zilal - Aserai ==> +Riding, -Athletics -->
    <!-- Beni Zilal Recruit -->
    <xsl:template match='NPCCharacter[@id="beni_zilal_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="10" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="30" />
                <skill id="TwoHanded"
                    value="5" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="10" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="50" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.beni_zilal_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Item0" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.aserai_civil_a" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.bandit_saddle_desert" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Item0" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.aserai_civil_f_cape" />
                    <equipment slot="Body" id="Item.aserai_civil_a" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.aseran_village_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.aserai_sword_1_t2" />
                    <equipment slot="Item0" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.tuareg" />
                    <equipment slot="Body" id="Item.vlandia_bandit_a" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Horse" id="Item.aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.bandit_saddle_desert" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Beni Zilal Soldier -->
    <xsl:template match='NPCCharacter[@id="beni_zilal_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="20" />
                <skill id="Riding"
                    value="90" />
                <skill id="OneHanded"
                    value="30" />
                <skill id="TwoHanded"
                    value="10" />
                <skill id="Polearm"
                    value="60" />
                <skill id="Bow"
                    value="30" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="80" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.beni_zilal_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Body" id="Item.long_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Body" id="Item.desert_padded_cloth" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.stitched_leather_shoulders" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.closed_head_scarf" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item1" id="Item.eastern_javelin_2_t3" />
                    <equipment slot="Item2" id="Item.eastern_spear_3_t3" />
                    <equipment slot="Item3" id="Item.aserai_sword_3_t3" />
                    <equipment slot="Head" id="Item.closed_head_scarf" />
                    <equipment slot="Body" id="Item.short_padded_robe" />
                    <equipment slot="Leg" id="Item.steppe_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_padded_vambrace" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.desert_cloth_harness" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Beni Zilal Royal Guard -->
    <xsl:template match='NPCCharacter[@id="beni_zilal_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_aserai" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="65" />
                <skill id="Riding"
                    value="110" />
                <skill id="OneHanded"
                    value="60" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="110" />
                <skill id="Bow"
                    value="25" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="95" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item1" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item2" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.stitched_leather_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.stitched_leather_shoulders" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.half_mail_and_plate_barding" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item1" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item2" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head" id="Item.closed_desert_helmet" />
                    <equipment slot="Body" id="Item.aserai_robe_c_chain" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.half_mail_and_plate_barding" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item1" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item2" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item3" id="Item.aserai_sword_4_t4" />
                    <equipment slot="Head" id="Item.closed_desert_helmet" />
                    <equipment slot="Body" id="Item.aserai_robe_c_chain" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                    <equipment slot="Cape" id="Item.wrapped_scarf" />
                    <equipment slot="Horse" id="Item.t2_aserai_horse" />
                    <equipment slot="HorseHarness" id="Item.half_mail_and_plate_barding" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- wolfskins - battania - no armor/cloth, only animal hides ==> -Riding, +Athletics -->
    <!-- Young Wolf -->
    <xsl:template match='NPCCharacter[@id="wolfskins_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="50" />
                <skill id="Riding"
                    value="10" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="15" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.wolfskins_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.highland_scouts_shield" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Body" id="Item.sleeveless_studded_fur_armor" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Head" id="Item.wolfhead" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.highland_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.highland_scouts_shield" />
                    <equipment slot="Item3" id="Item.battania_axe_1_t2" />
                    <equipment slot="Body" id="Item.sleeveless_studded_fur_armor" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Head" id="Item.wolfhead" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Seasoned Wolf -->
    <xsl:template match='NPCCharacter[@id="wolfskins_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="10" />
                <skill id="OneHanded"
                    value="80" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="80" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="10" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.wolfskins_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.wolfhead" />
                    <equipment slot="Body" id="Item.bandit_fur_b" />
                    <equipment slot="Leg" id="Item.highland_leg_wrappings" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                    <equipment slot="Cape" id="Item.wolf_shoulder" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.reinforced_flat_kite_shield" />
                    <equipment slot="Item3" id="Item.small_spurred_axe_t2" />
                    <equipment slot="Head" id="Item.wolfhead" />
                    <equipment slot="Body" id="Item.bandit_fur_b" />
                    <equipment slot="Leg" id="Item.rough_tied_boots" />
                    <equipment slot="Gloves" id="Item.rough_tied_bracers" />
                    <equipment slot="Cape" id="Item.wolf_shoulder" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Chosen Wolf -->
    <xsl:template match='NPCCharacter[@id="wolfskins_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_battania" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="120" />
                <skill id="Riding"
                    value="25" />
                <skill id="OneHanded"
                    value="110" />
                <skill id="TwoHanded"
                    value="50" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="130" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="15" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_yew_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Item3" id="Item.battania_axe_2_t4" />
                    <equipment slot="Head" id="Item.wolfhead" />
                    <equipment slot="Body" id="Item.bandit_fur_b" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.rough_bearskin" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.bracketed_heater_shield" />
                    <equipment slot="Item3" id="Item.battania_axe_2_t4" />
                    <equipment slot="Head" id="Item.wolfhead" />
                    <equipment slot="Body" id="Item.bandit_fur_b" />
                    <equipment slot="Leg" id="Item.highland_boots" />
                    <equipment slot="Gloves" id="Item.highland_gloves" />
                    <equipment slot="Cape" id="Item.armored_bearskin" />
                </EquipmentRoster>
                <EquipmentSet id="battania_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- hidden ones -->
    <!-- Hidden Pawn -->
    <xsl:template match='NPCCharacter[@id="hidden_hand_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="15" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="20" />
                <skill id="Bow"
                    value="20" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.hidden_hand_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_throwing_knife" />
                    <equipment slot="Item1" id="Item.lowland_throwing_knife" />
                    <equipment slot="Item2" id="Item.lowland_throwing_knife" />
                    <equipment slot="Item3" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.layered_leather_tunic" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_throwing_knife" />
                    <equipment slot="Item1" id="Item.lowland_throwing_knife" />
                    <equipment slot="Item2" id="Item.lowland_throwing_knife" />
                    <equipment slot="Item3" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.layered_leather_tunic" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Hidden Hand -->
    <xsl:template match='NPCCharacter[@id="hidden_hand_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="70" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="30" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="70" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.hidden_hand_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item1" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item2" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item3" id="Item.narrow_sword_t3" />
                    <equipment slot="Head" id="Item.imperial_open_mail_coif" />
                    <equipment slot="Body" id="Item.studded_leather_over_aketon" />
                    <equipment slot="Leg" id="Item.folded_town_boots" />
                    <equipment slot="Gloves" id="Item.woven_leather_bracers" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item1" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item2" id="Item.leafblade_throwing_knife" />
                    <equipment slot="Item3" id="Item.narrow_sword_t3" />
                    <equipment slot="Head" id="Item.imperial_open_mail_coif" />
                    <equipment slot="Body" id="Item.studded_leather_over_aketon" />
                    <equipment slot="Leg" id="Item.folded_town_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Puppeteer -->
    <xsl:template match='NPCCharacter[@id="hidden_hand_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="50" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="65" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="45" />
                <skill id="Crossbow"
                    value="25" />
                <skill id="Throwing"
                    value="100" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_throwingknife_t5" />
                    <equipment slot="Item1" id="Item.empire_throwingknife_t5" />
                    <equipment slot="Item2" id="Item.empire_throwingknife_t5" />
                    <equipment slot="Item3" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.ironlame_nasalhelm_over_imperial_coif" />
                    <equipment slot="Body" id="Item.imperial_mail_vest" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.reinforced_padded_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_throwingknife_t5" />
                    <equipment slot="Item1" id="Item.empire_throwingknife_t5" />
                    <equipment slot="Item2" id="Item.empire_throwingknife_t5" />
                    <equipment slot="Item3" id="Item.empire_sword_5_t4" />
                    <equipment slot="Head" id="Item.imperial_open_mail_coif" />
                    <equipment slot="Body" id="Item.imperial_mail_over_leather" />
                    <equipment slot="Leg" id="Item.plated_strip_boots" />
                    <equipment slot="Gloves" id="Item.lordly_padded_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- lakepike/sturgia ==> -Riding, +Athletics -->
    <!-- Lake Rat Recruit -->
    <xsl:template match='NPCCharacter[@id="lakepike_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="20" />
                <skill id="Riding"
                    value="15" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="5" />
                <skill id="Crossbow"
                    value="20" />
                <skill id="Throwing"
                    value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.lakepike_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_bit_axe_t2" />
                    <equipment slot="Item1" id="Item.light_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.layered_leather_tunic" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_bit_axe_t2" />
                    <equipment slot="Item1" id="Item.light_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.nordic_sloven_leather" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_bit_axe_t2" />
                    <equipment slot="Item1" id="Item.light_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.stitched_leather_vest" />
                    <equipment slot="Leg" id="Item.belted_leather_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.small_bit_axe_t2" />
                    <equipment slot="Item1" id="Item.light_horsemans_kite_shield" />
                    <equipment slot="Item2" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Item3" id="Item.northern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.northern_lamellar_armor" />
                    <equipment slot="Leg" id="Item.belted_leather_boots" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Lake Rat Veteran -->
    <xsl:template match='NPCCharacter[@id="lakepike_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="30" />
                <skill id="OneHanded"
                    value="30" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="70" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="80" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.lakepike_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.layered_leather_tunic" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.nordic_sloven_leather" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.stitched_leather_vest" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.goggled_helmet_over_leather" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_axe_t3" />
                    <equipment slot="Item1" id="Item.northern_round_shield" />
                    <equipment slot="Item2" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Item3" id="Item.generic_javelin_1_t3" />
                    <equipment slot="Body" id="Item.northern_lamellar_armor" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.goggled_helmet_over_leather" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Lake Rat Wrecker -->
    <xsl:template match='NPCCharacter[@id="lakepike_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="55" />
                <skill id="Riding"
                    value="30" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="110" />
                <skill id="Bow"
                    value="45" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="110" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battle_axe_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.nordic_helmet" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battle_axe_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Body" id="Item.nordic_sloven_over_mail" />
                    <equipment slot="Leg" id="Item.strapped_mail_chausses" />
                    <equipment slot="Head" id="Item.closed_goggled_helmet" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battle_axe_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Body" id="Item.nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.lendman_helmet_over_full_mail" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.battle_axe_t4" />
                    <equipment slot="Item1" id="Item.heavy_round_shield" />
                    <equipment slot="Item2" id="Item.western_javelin_3_t4" />
                    <equipment slot="Item3" id="Item.western_javelin_3_t4" />
                    <equipment slot="Body" id="Item.decorated_nordic_hauberk" />
                    <equipment slot="Leg" id="Item.mail_chausses" />
                    <equipment slot="Head" id="Item.goggled_helmet_over_full_mail" />
                    <equipment slot="Cape" id="Item.mail_shoulders" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3" civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- brotherhood of woods ==> -Riding, +Athletics -->
    <!-- Sprout -->
    <xsl:template match='NPCCharacter[@id="brotherhood_of_woods_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="15" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="20" />
                <skill id="Throwing"
                    value="5" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.brotherhood_of_woods_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                    <equipment slot="Body" id="Item.leather_coat_over_cloth" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.falchion_sword_t2" />
                    <equipment slot="Head" id="Item.battania_civil_hood" />
                    <equipment slot="Body" id="Item.leather_coat_over_cloth" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.falchion_sword_t2" />
                    <equipment slot="Body" id="Item.leather_coat_over_cloth" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Sapling -->
    <xsl:template match='NPCCharacter[@id="brotherhood_of_woods_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="110" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="90" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.brotherhood_of_woods_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.stitched_leather_vest" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_longbow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.star_falchion_sword_t3" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.stitched_leather_vest" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Arboreal -->
    <xsl:template match='NPCCharacter[@id="brotherhood_of_woods_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_vlandia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="110" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="90" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="100" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_yew_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.vlandia_sword_3_t4" />
                    <equipment slot="Body" id="Item.leather_and_iron_plate_armor" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.green_hood" />
                    <equipment slot="Head" id="Item.cervelliere_over_cloth_headwrap" />
                </EquipmentRoster>
                <EquipmentSet id="vlandia_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- guardians - -->
    <!-- Guardian Recruit -->
    <xsl:template match='NPCCharacter[@id="guardians_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="50" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="15" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="5" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.guardians_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.tunic_with_shoulder_pads" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.glen_ranger_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.iron_spatha_sword_t2" />
                    <equipment slot="Body" id="Item.footmans_tunic" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Expert Guardian -->
    <xsl:template match='NPCCharacter[@id="guardians_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="90" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="110" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="65" />
                <skill id="Bow"
                    value="90" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="50" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.guardians_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.short_sword_t3" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                    <equipment slot="Body" id="Item.padded_cloth_with_strips" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.composite_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.short_sword_t3" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Body" id="Item.padded_cloth_with_strips" />
                    <equipment slot="Leg" id="Item.strapped_shoes" />
                    <equipment slot="Gloves" id="Item.padded_vambrace" />
                    <equipment slot="Cape" id="Item.scarf" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Veteran Guardian -->
    <xsl:template match='NPCCharacter[@id="guardians_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="100" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_yew_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.broad_arming_sword_t4" />
                    <equipment slot="Head" id="Item.ironlame_nasalhelm_over_imperial_cloth" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.lowland_yew_bow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.broad_arming_sword_t4" />
                    <equipment slot="Head" id="Item.ironlame_nasalhelm_over_imperial_cloth" />
                    <equipment slot="Body" id="Item.legionary_mail" />
                    <equipment slot="Leg" id="Item.leather_cavalier_boots" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.padded_leather_shoulders" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- Embers of the Flame Troops -->
    <!-- Spark -->
    <xsl:template match='NPCCharacter[@id="embers_of_flame_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="50" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="15" />
                <skill id="Bow"
                    value="20" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="5" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.embers_of_flame_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.simple_back_sword_t2" />
                    <equipment slot="Body" id="Item.monk_robe" />
                    <equipment slot="Head" id="Item.pilgrim_hood" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Flame -->
    <xsl:template match='NPCCharacter[@id="embers_of_flame_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="50" />
                <skill id="OneHanded"
                    value="110" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="65" />
                <skill id="Bow"
                    value="90" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="50" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.embers_of_flame_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.narrow_sword_t3" />
                    <equipment slot="Body" id="Item.monk_robe" />
                    <equipment slot="Gloves" id="Item.leather_gloves" />
                    <equipment slot="Cape" id="Item.scarf" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_leather" />
                    <equipment slot="Leg" id="Item.leather_shoes" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Blaze -->
    <xsl:template match='NPCCharacter[@id="embers_of_flame_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="100" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="130" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="70" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.broad_arming_sword_t4" />
                    <equipment slot="Cape" id="Item.studded_imperial_neckguard" />
                    <equipment slot="Body" id="Item.monk_robe" />
                    <equipment slot="Leg" id="Item.mail_cavalier_boots" />
                    <equipment slot="Head" id="Item.nasal_helmet_with_mail" />
                    <equipment slot="Gloves" id="Item.mail_mitten" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- jawwal - tuareg-style horsemen and half-naked infantry with wicker shields ==> +Riding,
    -Athletics -->
    <!-- Jawwal Recruit -->
    <xsl:template match='NPCCharacter[@id="jawwal_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_jawwal" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="180" />
                <skill id="Riding"
                    value="15" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="20" />
                <skill id="Bow"
                    value="20" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.jawwal_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.closed_head_scarf" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item1" id="Item.eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.simple_sabre_sword_t2" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Jawwal Camel Rider -->
    <xsl:template match='NPCCharacter[@id="jawwal_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_jawwal" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="110" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="110" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="110" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.jawwal_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.stronger_eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.triangluar_spear_t3" />
                    <equipment slot="Item1" id="Item.stronger_footmans_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.tight_head_scarf" />
                    <equipment slot="Cape" id="Item.leopard_pelt" />
                    <equipment slot="Body" id="Item.steppe_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.camel" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Jawwal Bedouin -->
    <xsl:template match='NPCCharacter[@id="jawwal_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_jawwal" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="130" />
                <skill id="Riding"
                    value="80" />
                <skill id="OneHanded"
                    value="80" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="130" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="20" />
                <skill id="Throwing"
                    value="140" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item1" id="Item.stronger_eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.layered_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.war_camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item1" id="Item.stronger_eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Head" id="Item.closed_desert_helmet" />
                    <equipment slot="Body" id="Item.tassled_southern_robes" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.war_camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item1" id="Item.stronger_eastern_wicker_shield" />
                    <equipment slot="Item2" id="Item.desert_long_sword_t4" />
                    <equipment slot="Item3" id="Item.eastern_javelin_1_t2" />
                    <equipment slot="Body" id="Item.layered_robe" />
                    <equipment slot="Leg" id="Item.eastern_leather_boots" />
                    <equipment slot="Horse" id="Item.war_camel" />
                    <equipment slot="HorseHarness" id="Item.camel_saddle" />
                </EquipmentRoster>
                <EquipmentSet id="aserai_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- karakhuzaits - different headgear (scythian cap? hunnic hood?) but otherwise poorer-looking
    nomads ==> +Riding, -Athletics -->
    <!-- Karakhuzait Nomad -->
    <xsl:template match='NPCCharacter[@id="karakhuzaits_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="20" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="10" />
                <skill id="Bow"
                    value="30" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.karakhuzaits_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item1" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.bandit_saddle_desert" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.steppe_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_1_t2" />
                    <equipment slot="Item3" id="Item.khuzait_sword_1_t2" />
                    <equipment slot="Head" id="Item.upturned_fur_cap" />
                    <equipment slot="Body" id="Item.studded_steppe_leather" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Horse" id="Item.khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.bandit_saddle_desert" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Karakhuzait Rider -->
    <xsl:template match='NPCCharacter[@id="karakhuzaits_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="30" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="80" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="30" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.karakhuzaits_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item3" id="Item.khuzait_sword_3_t3" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.steppe_heavy_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_2_t3" />
                    <equipment slot="Item3" id="Item.khuzait_sword_3_t3" />
                    <equipment slot="Head" id="Item.plumed_fur_lined_helmet" />
                    <equipment slot="Body" id="Item.belted_leather_cuirass" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.steppe_leather_vambraces" />
                    <equipment slot="Horse" id="Item.t2_khuzait_horse" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Karakhuzait Elder -->
    <xsl:template match='NPCCharacter[@id="karakhuzaits_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_khuzait" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="60" />
                <skill id="Riding"
                    value="100" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="110" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item3" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Body" id="Item.stitched_leather_over_mail" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Horse" id="Item.storm_charger" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
                <EquipmentRoster civilian="true">
                    <equipment slot="Item0" id="Item.steppe_war_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.eastern_spear_4_t4" />
                    <equipment slot="Item3" id="Item.ridged_sabre_sword_t4" />
                    <equipment slot="Head" id="Item.plumed_nomad_helmet" />
                    <equipment slot="Body" id="Item.stitched_leather_over_mail" />
                    <equipment slot="Leg" id="Item.khuzait_curved_boots" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Cape" id="Item.eastern_studded_shoulders" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Horse" id="Item.storm_charger" />
                    <equipment slot="HorseHarness" id="Item.steppe_harness" />
                </EquipmentRoster>
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- forest people/sturgia ==> -Riding, +Athletics -->
    <!-- Recruit Forester -->
    <xsl:template match='NPCCharacter[@id="forest_people_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="40" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="40" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="20" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.forest_people_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.woodland_axe_t3" />
                    <equipment slot="Head" id="Item.vlandia_bandit_cape_b" />
                    <equipment slot="Body" id="Item.crude_leather_armor" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.mountain_hunting_bow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.woodland_axe_t3" />
                    <equipment slot="Body" id="Item.crude_leather_armor" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Expert Forester -->
    <xsl:template match='NPCCharacter[@id="forest_people_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="80" />
                <skill id="Riding"
                    value="20" />
                <skill id="OneHanded"
                    value="0" />
                <skill id="TwoHanded"
                    value="30" />
                <skill id="Polearm"
                    value="30" />
                <skill id="Bow"
                    value="90" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="20" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.forest_people_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.nordic_shortbow" />
                    <equipment slot="Item1" id="Item.default_arrows" />
                    <equipment slot="Item2" id="Item.default_arrows" />
                    <equipment slot="Item3" id="Item.woodland_axe_t3" />
                    <equipment slot="Head" id="Item.thinhide_coif" />
                    <equipment slot="Body" id="Item.woven_leather_vest" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.armwraps" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Veteran Forester -->
    <xsl:template match='NPCCharacter[@id="forest_people_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_sturgia" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="110" />
                <skill id="Riding"
                    value="60" />
                <skill id="OneHanded"
                    value="90" />
                <skill id="TwoHanded"
                    value="45" />
                <skill id="Polearm"
                    value="45" />
                <skill id="Bow"
                    value="100" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.woodland_longbow" />
                    <equipment slot="Item1" id="Item.barbed_arrows" />
                    <equipment slot="Item2" id="Item.barbed_arrows" />
                    <equipment slot="Item3" id="Item.battle_axe_t4" />
                    <equipment slot="Head" id="Item.bearhead" />
                    <equipment slot="Body" id="Item.leather_scale_armor" />
                    <equipment slot="Leg" id="Item.strapped_leather_boots" />
                    <equipment slot="Gloves" id="Item.guarded_armwraps" />
                    <equipment slot="Cape" id="Item.battania_civil_cloak" />
                </EquipmentRoster>
                <EquipmentSet id="sturgia_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>

    <!-- eleftheroi/empire -  -->
    <!-- Recruit Eleftheroi -->
    <xsl:template match='NPCCharacter[@id="eleftheroi_tier_1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="20" />
                <skill id="Riding"
                    value="40" />
                <skill id="OneHanded"
                    value="20" />
                <skill id="TwoHanded"
                    value="15" />
                <skill id="Polearm"
                    value="40" />
                <skill id="Bow"
                    value="40" />
                <skill id="Crossbow"
                    value="5" />
                <skill id="Throwing"
                    value="15" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.eleftheroi_tier_2" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_2_t4" />
                    <equipment slot="Item1" id="Item.empire_mace_1_t2" />
                    <equipment slot="Body" id="Item.baggy_trunks" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.bandit_saddle_steppe" />
                </EquipmentRoster>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_2_t4" />
                    <equipment slot="Item1" id="Item.empire_mace_1_t2" />
                    <equipment slot="Body" id="Item.armored_baggy_trunks" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_vambraces" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.bandit_saddle_steppe" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t1"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Expert Eleftheroi -->
    <xsl:template match='NPCCharacter[@id="eleftheroi_tier_2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="30" />
                <skill id="Riding"
                    value="70" />
                <skill id="OneHanded"
                    value="70" />
                <skill id="TwoHanded"
                    value="40" />
                <skill id="Polearm"
                    value="70" />
                <skill id="Bow"
                    value="30" />
                <skill id="Crossbow"
                    value="10" />
                <skill id="Throwing"
                    value="40" />
            </skills>
            <upgrade_targets>
                <upgrade_target id="NPCCharacter.eleftheroi_tier_3" />
            </upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_2_t4" />
                    <equipment slot="Item1" id="Item.light_mace_t3" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.battania_civil_c" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Cape" id="Item.bearskin" />
                    <equipment slot="Horse" id="Item.empire_horse" />
                    <equipment slot="HorseHarness" id="Item.light_harness" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t2"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>
    <!-- Veteran Eleftheroi -->
    <xsl:template match='NPCCharacter[@id="eleftheroi_tier_3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <face>
                <face_key_template value="BodyProperty.fighter_empire" />
            </face>
            <skills>
                <skill id="Athletics"
                    value="45" />
                <skill id="Riding"
                    value="100" />
                <skill id="OneHanded"
                    value="100" />
                <skill id="TwoHanded"
                    value="60" />
                <skill id="Polearm"
                    value="100" />
                <skill id="Bow"
                    value="45" />
                <skill id="Crossbow"
                    value="15" />
                <skill id="Throwing"
                    value="60" />
            </skills>
            <upgrade_targets></upgrade_targets>
            <Equipments>
                <EquipmentRoster>
                    <equipment slot="Item0" id="Item.empire_lance_2_t4" />
                    <equipment slot="Item1" id="Item.empire_mace_3_t4" />
                    <equipment slot="Head" id="Item.fur_hat" />
                    <equipment slot="Body" id="Item.northern_padded_gambeson" />
                    <equipment slot="Cape" id="Item.battania_civil_cape" />
                    <equipment slot="Leg" id="Item.leather_boots" />
                    <equipment slot="Gloves" id="Item.studded_leather_vambraces" />
                    <equipment slot="Horse" id="Item.sturgia_horse" />
                    <equipment slot="HorseHarness" id="Item.northern_noble_harness" />
                </EquipmentRoster>
                <EquipmentSet id="empire_troop_civilian_template_t3"
                    civilian="true" />
            </Equipments>
        </xsl:copy>
    </xsl:template>


</xsl:stylesheet>