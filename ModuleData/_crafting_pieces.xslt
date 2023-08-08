<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" />

    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- NEW CUSTOM CRAFTING PIECES -->
    <!--  -->
    <!--  -->
    <!--  -->
    <xsl:template match='CraftingPieces'>

        <xsl:copy>

            <!-- Straight Scythe Head (NEW Custom Piece) -->
            <CraftingPiece id="straight_scythe_head"
                name="Straight Scythe Head" tier="3" piece_type="Blade"
                mesh="battania_blade_7" culture="Culture.khuzait" length="32" weight="1.1">
                <BladeData stack_amount="3" physics_material="metal_weapon"
                    body_name="bo_sword_one_handed">
                    <!-- <Thrust damage_type="Pierce" damage_factor="1.2" /> -->
                    <Swing damage_type="Cut" damage_factor="2.2" />
                </BladeData>
                <Flags>
                    <Flag name="BonusAgainstShield" />
                </Flags>
                <Materials>
                    <Material id="Iron5" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- NEW JAVELIN SPECIFIC HEADS -->
            <!-- Making all javelin heads into new pieces so that they can only be thrown -->
            <!-- Wielding Javelins as 1-handed polearms was simply terrible in combat -->
            <!-- Also reducing thrown damage slightly -->

            <!-- Simple Javelin Head -->
            <CraftingPiece id="simple_javelin_head" name="Simple Javelin Head"
                tier="2"
                piece_type="Blade" mesh="spear_blade_15" length="22.862" weight="0.2136"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="4" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_1_1"
                    holster_body_name="bo_throwing_spear_quiver_1_1" holster_mesh_length="68.9">
                    <Thrust damage_type="Pierce" damage_factor="1.3" />
                    <!-- Down from 1.7 -->
                </BladeData>
                <Materials>
                    <Material id="Iron2" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Fish Harpoon Head -->
            <CraftingPiece id="fish_harpoon_head" name="Fish Harpoon Head" tier="2"
                piece_type="Blade"
                mesh="spear_blade_16" length="23.328" weight="0.204"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="4" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_3_1"
                    holster_body_name="bo_throwing_spear_quiver_3_1" holster_mesh_length="96.8">
                    <Thrust damage_type="Pierce" damage_factor="1.4" />
                    <!-- Down from 1.8 -->
                </BladeData>
                <Materials>
                    <Material id="Iron2" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Jagged Javelin Head -->
            <CraftingPiece id="jagged_javelin_head" name="Jagged Javelin Head" tier="3"
                piece_type="Blade" mesh="spear_blade_35" length="41" weight="0.3056"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="4" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_5_1"
                    holster_body_name="bo_throwing_spear_quiver_5_1" holster_mesh_length="96.7">
                    <Thrust damage_type="Pierce" damage_factor="1.6" />
                    <!-- Down from 2.0 -->
                </BladeData>
                <Materials>
                    <Material id="Iron3" count="3" />
                </Materials>
            </CraftingPiece>

            <!-- Lowland Javelin Head -->
            <CraftingPiece id="lowland_javelin_head" name="Lowland Javelin Head" tier="3"
                piece_type="Blade" mesh="spear_blade_1" length="48" weight="0.3384"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="5" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_4"
                    holster_body_name="bo_throwing_spear_quiver_4"
                    holster_mesh_length="96.2">
                    <Thrust damage_type="Pierce" damage_factor="1.8" />
                    <!-- Down from 2.2 -->
                </BladeData>
                <Materials>
                    <Material id="Iron2" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Woodland Javelin Head -->
            <CraftingPiece id="woodland_javelin_head" name="Woodland Javelin Head" tier="3"
                piece_type="Blade" mesh="spear_blade_14" length="46.28" weight="0.3768"
                excluded_item_usage_features="swing:TwoHandedPolearm_Bracing">
                <BladeData stack_amount="5" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_4"
                    holster_body_name="bo_throwing_spear_quiver_4"
                    holster_mesh_length="96.2">
                    <Thrust damage_type="Pierce" damage_factor="2.0" />
                    <!-- Down from 2.4 -->
                </BladeData>
                <Materials>
                    <Material id="Iron3" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Broad Blade Javelin Head -->
            <CraftingPiece id="broad_blade_javelin_head" name="Broad Blade Javelin Head" tier="4"
                piece_type="Blade" mesh="spear_blade_42" length="42" weight="0.2456"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="5" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_4_1"
                    holster_body_name="bo_throwing_spear_quiver_4_1" holster_mesh_length="96.2">
                    <Thrust damage_type="Pierce" damage_factor="2.1" />
                    <!-- Down from 2.5 -->
                </BladeData>
                <Materials>
                    <Material id="Iron4" count="2" />
                </Materials>
            </CraftingPiece>

            <!-- Jereed Head -->
            <CraftingPiece id="jereed_head" name="Jereed Head" tier="5"
                piece_type="Blade" mesh="spear_blade_27" length="69.5" weight="0.5"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="5" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_2"
                    holster_body_name="bo_throwing_spear_quiver_2"
                    holster_mesh_length="94.6">
                    <Thrust damage_type="Pierce" damage_factor="2.4" />
                    <!-- Down from 2.8 -->
                </BladeData>
                <Materials>
                    <Material id="Iron5" count="2" />
                </Materials>
            </CraftingPiece>

            <!-- Hooked Harpoon Head -->
            <CraftingPiece id="hooked_harpoon_head" name="Hooked Harpoon Head" tier="2"
                piece_type="Blade"
                mesh="spear_blade_10" length="39.775" weight="0.54"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="5" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_1"
                    holster_body_name="bo_throwing_spear_quiver_1"
                    holster_mesh_length="68.9">
                    <Thrust damage_type="Pierce" damage_factor="2.0" />
                    <!-- Down from 2.4 -->
                </BladeData>
                <Materials>
                    <Material id="Iron3" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Horseman Javelin Head -->
            <CraftingPiece id="horseman_javelin_head" name="Horseman Javelin Head" tier="3"
                piece_type="Blade" mesh="spear_blade_37" length="23.7" weight="0.4104"
                excluded_item_usage_features="swing">
                <BladeData stack_amount="5" physics_material="wood_weapon" body_name="bo_spear_b"
                    holster_mesh="throwing_spear_quiver_5"
                    holster_body_name="bo_throwing_spear_quiver_5"
                    holster_mesh_length="96.7">
                    <Thrust damage_type="Pierce" damage_factor="1.8" />
                    <!-- Down from 2.2 -->
                </BladeData>
                <Materials>
                    <Material id="Iron3" count="2" />
                </Materials>
            </CraftingPiece>

            <!-- NEW THROWING KNIVES HEADS -->
            <!-- Making all throwing knife heads into new pieces so that they can only be thrown -->
            <!-- Piercing Damage has also been increased -->
            <!-- Cut damage removed because one-handing is gone -->

            <!-- Highland Throwing Knife -->
            <CraftingPiece id="highland_dagger_head" name="Highland Throwing Knife Head" tier="2"
                piece_type="Blade" mesh="dagger_blade_10" length="30" weight="0.475">
                <BladeData stack_amount="6" physics_material="metal_weapon" body_name="bo_knife_a"
                    holster_mesh="throwing_dagger_quiver_2" holster_mesh_length="35.8">
                    <Thrust damage_type="Pierce" damage_factor="3.7" />
                    <Swing damage_type="Cut" damage_factor="3.5" />
                </BladeData>
                <Flags>
                    <Flag name="Civilian" type="ItemFlags" />
                </Flags>
                <Materials>
                    <Material id="Iron3" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Lowland/Leafblade Throwing Knife -->
            <CraftingPiece id="leaf_blade_dagger_head" name="Leafblade Throwing Knife Head" tier="3"
                piece_type="Blade" mesh="dagger_blade_11" length="30" weight="0.475">
                <BladeData stack_amount="6" physics_material="metal_weapon" body_name="bo_knife_a"
                    holster_mesh="throwing_dagger_quiver_2" holster_mesh_length="35.8">
                    <Thrust damage_type="Pierce" damage_factor="3.7" />
                    <Swing damage_type="Cut" damage_factor="3.5" />
                </BladeData>
                <Flags>
                    <Flag name="Civilian" type="ItemFlags" />
                </Flags>
                <Materials>
                    <Material id="Iron3" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Broad Bladed Throwing Knife -->
            <CraftingPiece id="broad_blade_dagger_head" name="Broad Bladed Throwing Knife Head"
                tier="4" piece_type="Blade" mesh="dagger_blade_12" length="25.2" weight="0.475"
                is_default="true">
                <BladeData stack_amount="6" physics_material="metal_weapon" body_name="bo_knife_a"
                    holster_mesh="throwing_dagger_quiver_3" holster_mesh_length="35.8">
                    <Thrust damage_type="Pierce" damage_factor="3.7" />
                    <Swing damage_type="Cut" damage_factor="3.5" />
                </BladeData>
                <Flags>
                    <Flag name="Civilian" type="ItemFlags" />
                </Flags>
                <Materials>
                    <Material id="Iron2" count="1" />
                </Materials>
            </CraftingPiece>

            <!-- Tribesman Throwing Knife -->
            <CraftingPiece id="tribesman_dagger_head" name="Tribesman Throwing Knife Head" tier="3"
                piece_type="Blade" mesh="dagger_blade_13" length="29" weight="0.475">
                <BladeData stack_amount="6" physics_material="metal_weapon" body_name="bo_knife_a"
                    holster_mesh="throwing_dagger_quiver_1" holster_mesh_length="35.8">
                    <Thrust damage_type="Pierce" damage_factor="3.7" />
                    <Swing damage_type="Cut" damage_factor="3.5" />
                </BladeData>
                <Flags>
                    <Flag name="Civilian" type="ItemFlags" />
                </Flags>
                <Materials>
                    <Material id="Iron3" count="2" />
                </Materials>
            </CraftingPiece>

            <!-- NEW THROWING AXE HEADS -->
            <!-- Making all throwing axe heads into new pieces so that they can only be thrown -->
            <!-- Cut Damage has also been increased -->

            <!-- Francesca/Franziska Head -->
            <CraftingPiece id="franziska_head" name="Franziska Head" tier="4"
                piece_type="Blade" mesh="axe_craft_4_head" distance_to_next_piece="5.787"
                distance_to_previous_piece="1.483" weight="0.453" is_default="true">
                <BuildData piece_offset="-2.966" />
                <BladeData stack_amount="3" blade_length="10.566" blade_width="19.257"
                    physics_material="metal_weapon" body_name="bo_axe_longer_b"
                    holster_mesh="throwing_axe_quiver_1">
                    <!-- <Swing damage_type="Cut" damage_factor="2.9" /> -->
                    <Swing damage_type="Cut" damage_factor="3.9" />
                </BladeData>
                <Materials>
                    <Material id="Iron4" count="3" />
                </Materials>
                <Flags>
                    <Flag name="CanBePickedUpFromCorpse" type="ItemFlags" />
                    <Flag name="BonusAgainstShield" />
                </Flags>
            </CraftingPiece>
            
            <!-- Standard -->
            <CraftingPiece id="throwing_axe_head" name="Throwing Axe Head" tier="4"
                piece_type="Blade" mesh="axe_craft_13_head" distance_to_next_piece="2.7"
                distance_to_previous_piece="1.6" weight="0.481">
                <BuildData piece_offset="-3.2" />
                <BladeData stack_amount="3" blade_length="8.707" blade_width="16.898"
                    physics_material="metal_weapon" body_name="bo_axe_longer_b"
                    holster_mesh="throwing_axe_quiver_1">
                    <!-- <Swing damage_type="Cut" damage_factor="3.1" /> -->
                    <Swing damage_type="Cut" damage_factor="4.0" />
                </BladeData>
                <Materials>
                    <Material id="Iron4" count="3" />
                </Materials>
                <Flags>
                    <Flag name="CanBePickedUpFromCorpse" type="ItemFlags" />
                    <Flag name="BonusAgainstShield" />
                </Flags>
            </CraftingPiece>

            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- REMOVING VANILLA PIECES -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Removing Vanilla Heads that were already only used -->
    <!--  specifically in their throwing weapon class -->

    <!-- Override `Harpoon`/`Hooked Javelin` Head -->
    <xsl:template match='CraftingPiece[@id="spear_blade_10"]'>
    </xsl:template>
    <!-- Remove `Horseman Javelin` Head -->
    <xsl:template match='CraftingPiece[@id="spear_blade_37"]'>
    </xsl:template>

    <!-- Remove `Highland Throwing Knife` Head -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_10"]'>
    </xsl:template>
    <!-- Remove `Broad Bladed Throwing Knife` Head -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_12"]'>
    </xsl:template>

    <!-- Remove `Franziska` Throwing Axe Head -->
    <xsl:template match='CraftingPiece[@id="axe_craft_4_head"]'>
    </xsl:template>
    <!-- Remove Standard Throwing Axe Head -->
    <xsl:template match='CraftingPiece[@id="axe_craft_13_head"]'>
    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- INDIVIDUAL PIECE CHANGES -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Let Pilum Head be Thrown Again -->
    <xsl:template match='CraftingPiece[@id="spear_blade_38"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="2" physics_material="wood_weapon" body_name="bo_spear_b"
                holster_mesh="throwing_spear_quiver_3_2"
                holster_body_name="bo_throwing_spear_quiver_3_2" holster_mesh_length="96.8">
                <Thrust damage_type="Pierce" damage_factor="2.5" />
            </BladeData>
            <Flags>
                <Flag name="BonusAgainstShield" />
                <!-- <Flag name="NotStackable" type="ItemFlags" /> -->
            </Flags>
            <Materials>
                <Material id="Iron3" count="1" />
            </Materials>
        </xsl:copy>
    </xsl:template>


    <!-- Broad Leaf Shaped Spear Head -->
    <!-- Increase Swing damage and change to Cut damage -->
    <xsl:template match='CraftingPiece[@id="spear_blade_40"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_spear_b">
                <Thrust damage_type="Pierce" damage_factor="2.1" />
                <Swing damage_type="Cut" damage_factor="1.8" />
            </BladeData>
            <Materials>
                <Material id="Iron3" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>


    <!-- Short Bill Head -->
    <!-- Include dismounting on swing attacks -->
    <!-- (formerly only on thrust attacks which the short bill can't even do) -->
    <xsl:template match='CraftingPiece[@id="axe_craft_17_head"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BuildData piece_offset="-7.6" />
            <BladeData stack_amount="3" blade_length="33.887" blade_width="22.47"
                physics_material="metal_weapon" body_name="bo_axe_longer_b">
                <Swing damage_type="Cut" damage_factor="3.3" />
            </BladeData>
            <Flags>
                <Flag name="CanBePickedUpFromCorpse" type="ItemFlags" />
                <!-- <Flag name="CanDismount" /> -->
                <Flag name="CanHook" />
            </Flags>
            <Materials>
                <Material id="Iron4" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Steel Tipped Hooked Spear Head -->
    <!-- Include the flag to dismount riders (since it's hooked) -->
    <xsl:template match='CraftingPiece[@id="spear_blade_36"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_spear_b">
                <Thrust damage_type="Pierce" damage_factor="2.4" />
            </BladeData>
            <Flags>
                <Flag name="CanDismount" />
            </Flags>
            <Materials>
                <Material id="Iron4" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Glaive Head -->
    <!-- Remove thrust attacks, Decrease Swing Damage -->
    <xsl:template match='CraftingPiece[@id="spear_blade_19"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_spear_b">
                <!-- <Thrust damage_type="Pierce" damage_factor="1.7" /> -->
                <!-- <Swing damage_type="Cut" damage_factor="3.8" /> -->
                <Swing damage_type="Cut" damage_factor="3.4" />
            </BladeData>
            <Materials>
                <Material id="Iron4" count="1" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Blunt Glaive Head -->
    <!-- Remove thrust attacks, Decrease Swing Damage -->
    <xsl:template match='CraftingPiece[@id="spear_blade_19_blunt"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_spear_b">
                <!-- <Thrust damage_type="Blunt" damage_factor="1.53" /> -->
                <!-- <Swing damage_type="Blunt" damage_factor="3.42" /> -->
                <Swing damage_type="Blunt" damage_factor="3.0" />
            </BladeData>
            <Materials>
                <Material id="Iron4" count="1" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Voulge Head -->
    <!-- Decrease Swing Damage -->
    <xsl:template match='CraftingPiece[@id="axe_craft_10_head"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BuildData piece_offset="-8" />
            <BladeData stack_amount="3" blade_length="23.118" blade_width="18.371"
                physics_material="metal_weapon" body_name="bo_axe_longer_b">
                <Thrust damage_type="Pierce" damage_factor="2.6" />
                <!-- <Swing damage_type="Cut" damage_factor="4.7" /> -->
                <Swing damage_type="Cut" damage_factor="3.75" />
            </BladeData>
            <Flags>
                <Flag name="CanBePickedUpFromCorpse" type="ItemFlags" />
            </Flags>
            <Materials>
                <Material id="Iron5" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- REMOVE THRUST ATTACKS FOR SPIKED MACE HEADS -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Highland Spiked Mace Head -->
    <xsl:template match='CraftingPiece[@id="mace_head_5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_mace_a">
                <!-- <Thrust damage_type="Pierce" damage_factor="1" /> -->
                <Swing damage_type="Pierce" damage_factor="2.27" />
            </BladeData>
            <Materials>
                <Material id="Iron2" count="2" />
                <Material id="Wood" count="1" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Spiked Club Head -->
    <xsl:template match='CraftingPiece[@id="mace_head_23"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_mace_a">
                <!-- <Thrust damage_type="Pierce" damage_factor="1" /> -->
                <Swing damage_type="Pierce" damage_factor="2.07" />
            </BladeData>
            <Materials>
                <Material id="Iron2" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Spiked Mace Head -->
    <xsl:template match='CraftingPiece[@id="mace_head_22"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_mace_a">
                <!-- <Thrust damage_type="Pierce" damage_factor="0.8" /> -->
                <Swing damage_type="Pierce" damage_factor="2.07" />
            </BladeData>
            <Materials>
                <Material id="Iron2" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Morningstar/Highland Mace Head -->
    <xsl:template match='CraftingPiece[@id="mace_head_9"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_mace_a">
                <!-- <Thrust damage_type="Pierce" damage_factor="1.7" /> -->
                <!-- <Swing damage_type="Blunt" damage_factor="2.52" /> -->
                <Swing damage_type="Pierce " damage_factor="2.52" />
            </BladeData>
            <Materials>
                <Material id="Iron3" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>


</xsl:stylesheet>