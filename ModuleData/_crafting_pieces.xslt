<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" />

    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>


    <!-- Straight Scythe Head (NEW Custom Piece) -->
    <xsl:template match='CraftingPieces'>

        <xsl:copy>
            <CraftingPiece id="straight_scythe_head"
                name="Straight Scythe Head" tier="3" piece_type="Blade"
                mesh="battania_blade_7" culture="Culture.khuzait" length="32" weight="1.1">
                <BladeData stack_amount="3" physics_material="metal_weapon"
                    body_name="bo_sword_one_handed">
                    <!-- <Thrust damage_type="Pierce" damage_factor="1.2" /> -->
                    <Swing damage_type="Cut" damage_factor="2.3" />
                </BladeData>
                <Flags>
                    <Flag name="BonusAgainstShield" />
                </Flags>
                <Materials>
                    <Material id="Iron5" count="1" />
                </Materials>
            </CraftingPiece>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>


    <!-- Pilum Head, Let it be thrown again -->
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
    <!-- Increase Swing damage -->
    <xsl:template match='CraftingPiece[@id="spear_blade_40"]'>


        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_spear_b">
                <Thrust damage_type="Pierce" damage_factor="2.1" />
                <Swing damage_type="Blunt" damage_factor="2.0" />
            </BladeData>
            <Materials>
                <Material id="Iron3" count="2" />
            </Materials>
        </xsl:copy>

    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- REMOVE THRUST ATTACKS FOR SPIKED MACES -->
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

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- END : REMOVE THRUST ATTACKS FOR SPIKED MACES -->
    <!--  -->
    <!--  -->
    <!--  -->

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
                <Flag name="CanDismount" />
                <Flag name="CanHook" />
            </Flags>
            <Materials>
                <Material id="Iron4" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!-- Glaive Head, Remove thrust attacks -->
    <xsl:template match='CraftingPiece[@id="spear_blade_19"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="3" physics_material="wood_weapon" body_name="bo_spear_b">
                <!-- <Thrust damage_type="Pierce" damage_factor="1.7" /> -->
                <Swing damage_type="Cut" damage_factor="3.8" />
            </BladeData>
            <Materials>
                <Material id="Iron4" count="1" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- MORE THROWING DAGGERS PER STACK AND INCREASE DAMAGE -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Highland Throwing Dagger -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_10"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
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
        </xsl:copy>
    </xsl:template>

    <!-- Lowland/Leafblade Throwing Knife -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_11"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
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
        </xsl:copy>
    </xsl:template>

    <!-- Broad Bladed Throwing Knife -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_12"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
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
        </xsl:copy>
    </xsl:template>

    <!-- Tribesman Throwing Daggers -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_13"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
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
        </xsl:copy>
    </xsl:template>

    <!-- Sparring Throwing Daggers? -->
    <xsl:template match='CraftingPiece[@id="dagger_blade_13_blunt"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <BladeData stack_amount="6" physics_material="metal_weapon" body_name="bo_knife_a"
                holster_mesh="throwing_dagger_quiver_1" holster_mesh_length="35.8">
                <Thrust damage_type="Blunt" damage_factor="3.2" />
                <Swing damage_type="Blunt" damage_factor="3.15" />
            </BladeData>
            <Flags>
                <Flag name="Civilian" type="ItemFlags" />
            </Flags>
            <Materials>
                <Material id="Iron3" count="2" />
            </Materials>
        </xsl:copy>
    </xsl:template>

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- END : MORE THROWING DAGGERS PER STACK AND INCREASE DAMAGE -->
    <!--  -->
    <!--  -->
    <!--  -->

</xsl:stylesheet>