<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" />

    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftingTemplate[@id="TwoHandedPolearm"]/UsablePieces'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
            <UsablePiece piece_id="straight_scythe_head" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftingTemplate[@id="Javelin"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <PieceDatas>
                <PieceData piece_type="Handle" build_order="0" />
                <PieceData piece_type="Guard" build_order="1" />
                <PieceData piece_type="Blade" build_order="2" />
                <PieceData piece_type="Pommel" build_order="-1" />
            </PieceDatas>
            <WeaponDescriptions>
                <WeaponDescription id="Javelin" />
                <WeaponDescription id="OneHandedPolearm_JavelinAlternative" />
            </WeaponDescriptions>
            <StatsData weapon_description="Javelin">
                <StatData stat_type="Weight" max_value="7.0" />
                <StatData stat_type="WeaponReach" max_value="300" />
                <StatData stat_type="MissileDamage" max_value="500" />
                <StatData stat_type="MissileSpeed" max_value="200" />
                <StatData stat_type="Accuracy" max_value="100" />
                <StatData stat_type="StackAmount" max_value="5" />
            </StatsData>
            <!-- Make Alternative Javelin really shitty so AI doesn't use it -->
            <StatsData weapon_description="OneHandedPolearm_JavelinAlternative">
                <StatData stat_type="Weight"
                          max_value="7.0" />
                <StatData stat_type="WeaponReach"
                          max_value="300" />
                <StatData stat_type="ThrustSpeed"
                          max_value="200" />
                <StatData stat_type="SwingSpeed"
                          max_value="200" />
                <StatData stat_type="ThrustDamage"
                          max_value="500" />
                <StatData stat_type="SwingDamage"
                          max_value="500" />
                <StatData stat_type="Handling"
                          max_value="200" />
                <!--<StatData stat_type="FollowUp" max_value="200" />-->
              </StatsData>
            <UsablePieces>
                <UsablePiece piece_id="simple_javelin_head" />
                <UsablePiece piece_id="fish_harpoon_head" />
                <UsablePiece piece_id="jagged_javelin_head" />
                <UsablePiece piece_id="lowland_javelin_head" />
                <UsablePiece piece_id="woodland_javelin_head" />
                <UsablePiece piece_id="broad_blade_javelin_head" />
                <UsablePiece piece_id="jereed_head" />
                <UsablePiece piece_id="hooked_harpoon_head" />
                <UsablePiece piece_id="horseman_javelin_head" />
                <!-- <UsablePiece piece_id="spear_blade_1" /> -->
                <!-- <UsablePiece piece_id="spear_blade_14" /> -->
                <!-- <UsablePiece piece_id="spear_blade_15" /> -->
                <!-- <UsablePiece piece_id="spear_blade_16" /> -->
                <!-- <UsablePiece piece_id="spear_blade_27" /> -->
                <!-- <UsablePiece piece_id="spear_blade_35" /> -->
                <!-- <UsablePiece piece_id="spear_blade_42" /> -->

                <UsablePiece piece_id="spear_blade_9" />
                <UsablePiece piece_id="spear_blade_41" />
                <UsablePiece piece_id="spear_blade_15_blunt" />
                <UsablePiece piece_id="spear_blade_35_blunt" />
                <UsablePiece piece_id="spear_blade_37_blunt" />
                <UsablePiece piece_id="spear_blade_38" />
                <UsablePiece piece_id="spear_handle_2" />
                <UsablePiece piece_id="spear_handle_9" />
                <UsablePiece piece_id="spear_handle_10" />
                <UsablePiece piece_id="spear_handle_11" />
                <UsablePiece piece_id="spear_handle_12" />

                <UsablePiece piece_id="default_polearm_guard" />
                <UsablePiece piece_id="spear_guard_15" />
                <UsablePiece piece_id="spear_guard_7" />
                <UsablePiece piece_id="mp_default_polearm_guard" />
                <UsablePiece piece_id="mp_spear_guard_4" />
                <UsablePiece piece_id="mp_spear_guard_7" />
                <UsablePiece piece_id="mp_spear_guard_15" />

                <UsablePiece piece_id="default_polearm_pommel" />
                <UsablePiece piece_id="spear_pommel_5" />
                <UsablePiece piece_id="spear_pommel_12" />
                <UsablePiece piece_id="mp_default_polearm_pommel" />
                <UsablePiece piece_id="mp_spear_pommel_12" />
                <UsablePiece piece_id="mp_spear_pommel_8" />

                <UsablePiece piece_id="mp_javelin_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_javelin_blade_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_javelin_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_javelin_blade_extraammo" mp_piece="true" />
                <UsablePiece piece_id="mp_javelin_blade_extraammo_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_javelin_handle_extraammo" mp_piece="true" />
                <UsablePiece piece_id="mp_light_javelin_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_light_javelin_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_pilum_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_pilum_blade_extraammo" mp_piece="true" />
                <UsablePiece piece_id="mp_jereed_blade_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_jereed_blade_extra_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_jereed_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_jereed_blade_extra" mp_piece="true" />
                <UsablePiece piece_id="mp_jereed_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_blade_extra" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_blade_strong" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_blade_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_blade_extra_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_blade_strong_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_harpoon_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_battania_javelin_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_battania_javelin_blade_extra" mp_piece="true" />
                <UsablePiece piece_id="mp_battania_javelin_blade_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_battania_javelin_blade_extra_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_battania_javelin_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_plumbata_blade" mp_piece="true" />
                <UsablePiece piece_id="mp_plumbata_handle" mp_piece="true" />
            </UsablePieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftingTemplate[@id="ThrowingKnife"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <PieceDatas>
                <PieceData piece_type="Handle" build_order="0" />
                <PieceData piece_type="Guard" build_order="1" />
                <PieceData piece_type="Blade" build_order="2" />
                <PieceData piece_type="Pommel" build_order="-1" />
            </PieceDatas>
            <WeaponDescriptions>
                <WeaponDescription id="ThrowingKnife" />
                <WeaponDescription id="Dagger" />
            </WeaponDescriptions>
            <StatsData weapon_description="ThrowingKnife">
                <StatData stat_type="Weight"
                    max_value="2.0" />
                <StatData stat_type="WeaponReach"
                    max_value="100" />
                <StatData stat_type="MissileSpeed"
                    max_value="150" />
                <StatData stat_type="MissileDamage"
                    max_value="200" />
                <StatData stat_type="Accuracy"
                    max_value="100" />
            </StatsData>
            <StatsData weapon_description="Dagger">
                <StatData stat_type="Weight"
                          max_value="7.0" />
                <StatData stat_type="WeaponReach"
                          max_value="300" />
                <StatData stat_type="ThrustSpeed"
                          max_value="200" />
                <StatData stat_type="SwingSpeed"
                          max_value="200" />
                <StatData stat_type="ThrustDamage"
                          max_value="500" />
                <StatData stat_type="SwingDamage"
                          max_value="500" />
                <StatData stat_type="Handling"
                          max_value="200" />
                <!--<StatData stat_type="FollowUp" max_value="200" />-->
              </StatsData>
            <UsablePieces>
                <UsablePiece piece_id="highland_dagger_head" />
                <UsablePiece piece_id="leaf_blade_dagger_head" />
                <UsablePiece piece_id="broad_blade_dagger_head" />
                <UsablePiece piece_id="tribesman_dagger_head" />
                
                <!-- <UsablePiece piece_id="dagger_blade_10" /> -->
                <!-- <UsablePiece piece_id="dagger_blade_11" /> -->
                <!-- <UsablePiece piece_id="dagger_blade_12" /> -->
                <!-- <UsablePiece piece_id="dagger_blade_13" /> -->

                <UsablePiece piece_id="empire_dagger_guard_3" />
                <UsablePiece piece_id="empire_dagger_guard_4" />
                <UsablePiece piece_id="empire_dagger_guard_5" />
                <UsablePiece piece_id="empire_dagger_guard_6" />
                <UsablePiece piece_id="sturgian_dagger_guard_1" />
                <UsablePiece piece_id="sturgian_dagger_guard_2" />
                <UsablePiece piece_id="sturgian_dagger_guard_3" />
                <UsablePiece piece_id="sturgian_dagger_guard_5" />
                <UsablePiece piece_id="sturgian_dagger_guard_6" />
                <UsablePiece piece_id="sturgian_dagger_guard_7" />
                <UsablePiece piece_id="sturgian_dagger_guard_8" />
                <UsablePiece piece_id="khuzait_dagger_guard_5" />
                <UsablePiece piece_id="khuzait_dagger_guard_6" />
                <UsablePiece piece_id="khuzait_dagger_guard_8" />
                <UsablePiece piece_id="khuzait_dagger_guard_9" />
                <UsablePiece piece_id="vlandian_dagger_guard_4" />
                <UsablePiece piece_id="vlandian_dagger_guard_5" />
                <UsablePiece piece_id="vlandian_dagger_guard_6" />
                <UsablePiece piece_id="vlandian_dagger_guard_7" />
                <UsablePiece piece_id="vlandian_dagger_guard_8" />
                <UsablePiece piece_id="cleaver_dagger_guard_1" />
                <UsablePiece piece_id="cleaver_dagger_guard_2" />
                <UsablePiece piece_id="cleaver_dagger_guard_3" />
                <UsablePiece piece_id="cleaver_dagger_guard_4" />
                <UsablePiece piece_id="cleaver_dagger_guard_5" />
                <UsablePiece piece_id="aserai_dagger_guard_1" />
                <UsablePiece piece_id="aserai_dagger_guard_3" />
                <UsablePiece piece_id="aserai_dagger_guard_4" />
                <UsablePiece piece_id="battania_dagger_guard_8" />
                <UsablePiece piece_id="empire_grip_1" />
                <UsablePiece piece_id="empire_grip_2" />
                <UsablePiece piece_id="empire_grip_3" />
                <UsablePiece piece_id="empire_grip_4" />
                <UsablePiece piece_id="empire_grip_5" />
                <UsablePiece piece_id="empire_grip_6" />
                <UsablePiece piece_id="sturgian_grip_1" />
                <UsablePiece piece_id="sturgian_grip_2" />
                <UsablePiece piece_id="sturgian_grip_3" />
                <UsablePiece piece_id="sturgian_grip_4" />
                <UsablePiece piece_id="sturgian_grip_5" />
                <UsablePiece piece_id="sturgian_grip_6" />
                <UsablePiece piece_id="sturgian_grip_7" />
                <UsablePiece piece_id="sturgian_grip_8" />
                <UsablePiece piece_id="sturgian_grip_9" />
                <UsablePiece piece_id="sturgian_grip_10" />
                <UsablePiece piece_id="sturgian_grip_11" />
                <UsablePiece piece_id="sturgian_grip_12" />
                <UsablePiece piece_id="sturgian_grip_13" />
                <UsablePiece piece_id="sturgian_grip_14" />
                <UsablePiece piece_id="sturgian_grip_34" />
                <UsablePiece piece_id="sturgian_grip_35" />
                <UsablePiece piece_id="sturgian_grip_37" />
                <UsablePiece piece_id="khuzait_grip_2" />
                <UsablePiece piece_id="khuzait_grip_4" />
                <UsablePiece piece_id="khuzait_grip_5" />
                <UsablePiece piece_id="khuzait_grip_7" />
                <UsablePiece piece_id="vlandian_grip_1" />
                <UsablePiece piece_id="vlandian_grip_2" />
                <UsablePiece piece_id="vlandian_grip_4" />
                <UsablePiece piece_id="vlandian_grip_5" />
                <UsablePiece piece_id="vlandian_grip_6" />
                <UsablePiece piece_id="vlandian_grip_21" />
                <UsablePiece piece_id="vlandian_grip_23" />
                <UsablePiece piece_id="cleaver_grip_1" />
                <UsablePiece piece_id="cleaver_grip_5" />
                <UsablePiece piece_id="aserai_grip_1" />
                <UsablePiece piece_id="aserai_grip_3" />
                <UsablePiece piece_id="aserai_grip_4" />
                <UsablePiece piece_id="aserai_grip_5" />
                <UsablePiece piece_id="aserai_grip_6" />
                <UsablePiece piece_id="aserai_grip_7" />
                <UsablePiece piece_id="aserai_grip_8" />
                <UsablePiece piece_id="battania_grip_1" />
                <UsablePiece piece_id="battania_grip_3" />
                <UsablePiece piece_id="wood_grip_1" />
                <UsablePiece piece_id="sickle_grip_1" />
                <UsablePiece piece_id="empire_pommel_1" />
                <UsablePiece piece_id="empire_pommel_4" />
                <UsablePiece piece_id="sturgian_pommel_1" />
                <UsablePiece piece_id="sturgian_pommel_3" />
                <UsablePiece piece_id="sturgian_pommel_4" />
                <UsablePiece piece_id="sturgian_pommel_5" />
                <UsablePiece piece_id="sturgian_pommel_7" />
                <UsablePiece piece_id="sturgian_pommel_8" />
                <UsablePiece piece_id="khuzait_pommel_1" />
                <UsablePiece piece_id="khuzait_pommel_2" />
                <UsablePiece piece_id="khuzait_pommel_3" />
                <UsablePiece piece_id="khuzait_pommel_4" />
                <UsablePiece piece_id="khuzait_pommel_6" />
                <UsablePiece piece_id="khuzait_pommel_7" />
                <UsablePiece piece_id="vlandian_pommel_1" />
                <UsablePiece piece_id="vlandian_pommel_5" />
                <UsablePiece piece_id="vlandian_pommel_6" />
                <UsablePiece piece_id="vlandian_pommel_7" />
                <UsablePiece piece_id="vlandian_pommel_10" />
                <UsablePiece piece_id="cleaver_pommel_4" />
                <UsablePiece piece_id="aserai_pommel_1" />
                <UsablePiece piece_id="aserai_pommel_3" />
                <UsablePiece piece_id="aserai_pommel_8" />
                <UsablePiece piece_id="aserai_pommel_9" />
                <UsablePiece piece_id="battania_pommel_1" />
                <UsablePiece piece_id="battania_pommel_2" />
                <UsablePiece piece_id="battania_pommel_9" />
                <UsablePiece piece_id="dagger_blade_13_blunt" />
                <UsablePiece piece_id="dagger_blade_14" />

                <UsablePiece piece_id="mp_battania_dagger_blade"
                    mp_piece="true" />
                <UsablePiece piece_id="mp_battania_dagger_guard"
                    mp_piece="true" />
                <UsablePiece piece_id="mp_battania_dagger_grip"
                    mp_piece="true" />
                <UsablePiece piece_id="mp_battania_dagger_pommel"
                    mp_piece="true" />
            </UsablePieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftingTemplate[@id="ThrowingAxe"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <PieceDatas>
                <PieceData piece_type="Handle" build_order="0" />
                <PieceData piece_type="Blade" build_order="1" />
            </PieceDatas>
            <WeaponDescriptions>
                <WeaponDescription id="ThrowingAxe" />
                <WeaponDescription id="OneHandedAxe" />
            </WeaponDescriptions>
            <StatsData weapon_description="ThrowingAxe">
                <StatData stat_type="Weight"
                    max_value="7.0" />
                <StatData stat_type="WeaponReach"
                    max_value="300" />
                <StatData stat_type="MissileDamage"
                    max_value="500" />
                <StatData stat_type="MissileSpeed"
                    max_value="200" />
                <StatData stat_type="Accuracy"
                    max_value="100" />
            </StatsData>
            <StatsData weapon_description="OneHandedAxe">
                <StatData stat_type="Weight"
                          max_value="7.0" />
                <StatData stat_type="WeaponReach"
                          max_value="300" />
                <StatData stat_type="ThrustSpeed"
                          max_value="200" />
                <StatData stat_type="SwingSpeed"
                          max_value="200" />
                <StatData stat_type="ThrustDamage"
                          max_value="500" />
                <StatData stat_type="SwingDamage"
                          max_value="500" />
                <StatData stat_type="Handling"
                          max_value="200" />
                <!--<StatData stat_type="FollowUp" max_value="200" />-->
              </StatsData>
            <UsablePieces>
                
                <UsablePiece piece_id="franziska_head" />
                <UsablePiece piece_id="throwing_axe_head" />
                <!-- <UsablePiece piece_id="axe_craft_4_head" /> -->
                <!-- <UsablePiece piece_id="axe_craft_13_head" /> -->

                <UsablePiece piece_id="axe_craft_13_head_blunt" />
                <UsablePiece piece_id="axe_craft_31_head" />
                <UsablePiece piece_id="axe_craft_11_handle" />
                <UsablePiece piece_id="axe_craft_12_handle" />
                <UsablePiece piece_id="axe_craft_28_handle" />

                <UsablePiece piece_id="mp_vlandian_throwing_axe_head" mp_piece="true" />
                <UsablePiece piece_id="mp_vlandian_throwing_axe_head_extra" mp_piece="true" />
                <UsablePiece piece_id="mp_vlandian_throwing_axe_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_vlandian_throwing_axe_handle_extra" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_throwing_axe_head" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_throwing_axe_head_captain" mp_piece="true" />
                <UsablePiece piece_id="mp_sturgia_throwing_axe_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_aserai_throwing_axe_head" mp_piece="true" />
                <UsablePiece piece_id="mp_aserai_throwing_axe_handle" mp_piece="true" />
                <UsablePiece piece_id="mp_battanian_throwing_axe_head" mp_piece="true" />
                <UsablePiece piece_id="mp_battanian_throwing_axe_handle" mp_piece="true" />
            </UsablePieces>

        </xsl:copy>
    </xsl:template>


</xsl:stylesheet>