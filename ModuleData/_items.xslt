<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" />

    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

    <!-- Add NEW Custom Items -->
    <xsl:template match='Items'>

        <xsl:copy>

            <!-- NEW! Straightened Scythe -->
            <CraftedItem id="straight_scythe" name="Straightened Scythe"
                crafting_template="TwoHandedPolearm" culture="Culture.khuzait">
                <Pieces>
                    <!-- <Piece id="spear_blade_12" Type="Blade" scale_factor="100" /> -->
                    <Piece id="straight_scythe_head" Type="Blade" scale_factor="100" />
                    <Piece id="spear_handle_1" Type="Handle" scale_factor="75" />
                </Pieces>
            </CraftedItem>


            <!-- END ADDING NEW ITEMS -->
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>


    <!-- Broad Leaf Shaped Spear - Increase size of head -->
    <xsl:template match='CraftedItem[@id="northern_spear_2_t3"]'>

        <xsl:copy>
            <xsl:apply-templates select="@*" />

            <Pieces>
                <Piece id="spear_blade_40"
                    Type="Blade"
                    scale_factor="100" />
                <Piece id="spear_banner_10"
                    Type="Guard"
                    scale_factor="90" />
                <Piece id="spear_handle_21"
                    Type="Handle"
                    scale_factor="70" />
            </Pieces>

        </xsl:copy>
    </xsl:template>

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- HORSE SADDLES -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Stripped Leather Harness - Name Fix (Striped -> Stripped) -->
    <!-- Incrase Armor (18->24) - Increase Weight (26->35) -->
    <xsl:template match='Item[@id="stripped_leather_harness"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">Stripped Leather Harness</xsl:attribute>
            <xsl:attribute name="weight">35</xsl:attribute>
            <ItemComponent>
                <Armor body_armor="24" mane_cover_type="none" family_type="1"
                    modifier_group="leather"
                    reins_mesh="horse_harness_imperial_a_rein" material_type="Leather" />
            </ItemComponent>
            <Flags Civilian="true" />
            <Flags />
        </xsl:copy>
    </xsl:template>

    <!-- Battania Horse Harness - Increase Armor (15->26) - Increase Weight (30->44) -->
    <xsl:template match='Item[@id="battania_horse_harness"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="weight">44</xsl:attribute>
            <ItemComponent>
                <Armor body_armor="26" mane_cover_type="none" family_type="1"
                    modifier_group="leather"
                    material_type="Leather" />
            </ItemComponent>
            <Flags Civilian="true" />
            <Flags />
        </xsl:copy>
    </xsl:template>

    <!-- Rough Cavalry Saddle - Increase Armor (15->19) -->
    <!-- Decrease Weight (35 -> 31) -->
    <xsl:template match='Item[@id="northern_noble_harness"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="weight">31</xsl:attribute>
            <ItemComponent>
                <Armor body_armor="19" mane_cover_type="none" family_type="1"
                    modifier_group="leather"
                    reins_mesh="horse_harness_sturgia_b_rein" material_type="Leather" />
            </ItemComponent>
            <Flags Civilian="true" />
            <Flags />
        </xsl:copy>
    </xsl:template>

    <!-- Rugged Saddle - Increase Armor (8->14) -->
    <xsl:template match='Item[@id="bandit_saddle_steppe"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <ItemComponent>
                <Armor body_armor="14" mane_cover_type="none" family_type="1" modifier_group="cloth"
                    reins_mesh="bandit_saddle_a_rein" material_type="Cloth" />
            </ItemComponent>
            <Flags Civilian="true" />
            <Flags />
        </xsl:copy>
    </xsl:template>

    <!-- Light Saddle - Decrease Armor (20->17) -->
    <xsl:template match='Item[@id="northern_light_harness"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <ItemComponent>
                <Armor body_armor="17" mane_cover_type="none" family_type="1" modifier_group="leather"
                    reins_mesh="horse_harness_roman_b_new_rein" material_type="Leather" />
            </ItemComponent>
            <Flags Civilian="true" />
            <Flags />
        </xsl:copy>
    </xsl:template>

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- END : HORSE SADDLES -->
    <!--  -->
    <!--  -->
    <!--  -->

</xsl:stylesheet>