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
    <!-- ADDING NEW CUSTOM ITEMS -->
    <!--  -->
    <!--  -->
    <!--  -->
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


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- HORSE SADDLES -->
    <!-- Increase armor and weights of several -->
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
                <Armor body_armor="17" mane_cover_type="none" family_type="1"
                    modifier_group="leather"
                    reins_mesh="horse_harness_roman_b_new_rein" material_type="Leather" />
            </ItemComponent>
            <Flags Civilian="true" />
            <Flags />
        </xsl:copy>
    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- JAVELINS -->
    <!-- Switch to new custom Javelin Heads -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Simple Javelin -->
    <xsl:template match='CraftedItem[@id="western_javelin_1_t2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="simple_javelin_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_2" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Fish Harpoon -->
    <xsl:template match='CraftedItem[@id="northern_javelin_1_t2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="fish_harpoon_head" Type="Blade" scale_factor="90" />
                <Piece id="spear_guard_15" Type="Guard" scale_factor="90" />
                <Piece id="spear_handle_12" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Jagged Javelin -->
    <xsl:template match='CraftedItem[@id="eastern_javelin_1_t2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="jagged_javelin_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_9" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Lowland Javelin -->
    <xsl:template match='CraftedItem[@id="western_javelin_2_t3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="lowland_javelin_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_11" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Harpoon -->
    <xsl:template match='CraftedItem[@id="generic_javelin_1_t3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="hooked_harpoon_head" Type="Blade" scale_factor="90" />
                <Piece id="spear_guard_15" Type="Guard" scale_factor="90" />
                <Piece id="spear_handle_11" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Woodland Javelin -->
    <xsl:template match='CraftedItem[@id="northern_javelin_2_t3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="woodland_javelin_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_2" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Horseman Javelin -->
    <xsl:template match='CraftedItem[@id="eastern_javelin_2_t3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="horseman_javelin_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_10" Type="Handle" scale_factor="100" />
                <Piece id="default_polearm_pommel" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Hooked Javelin -->
    <xsl:template match='CraftedItem[@id="western_javelin_3_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="hooked_harpoon_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_11" Type="Handle" scale_factor="100" />
                <Piece id="spear_pommel_5" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Broad Blade Javelin -->
    <xsl:template match='CraftedItem[@id="northern_javelin_3_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="broad_blade_javelin_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_11" Type="Handle" scale_factor="100" />
                <Piece id="spear_pommel_5" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>
    <!-- Jereed -->
    <xsl:template match='CraftedItem[@id="eastern_javelin_3_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="jereed_head" Type="Blade" scale_factor="100" />
                <Piece id="default_polearm_guard" Type="Guard" scale_factor="100" />
                <Piece id="spear_handle_10" Type="Handle" scale_factor="100" />
                <Piece id="spear_pommel_12" Type="Pommel" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- THROWING DAGGERS -->
    <!-- Switch to new custom Throwing Dagger Heads -->
    <!--  -->
    <!--  -->
    <!--  -->

    <!-- Lowland Throwing Knife -->
    <xsl:template match='CraftedItem[@id="lowland_throwing_knife"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="leaf_blade_dagger_head" Type="Blade" />
                <Piece id="aserai_dagger_guard_4" Type="Guard" />
                <Piece id="sturgian_grip_5" Type="Handle" />
                <Piece id="khuzait_pommel_1" Type="Pommel" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <!-- Leafblade Throwing Knife -->
    <xsl:template match='CraftedItem[@id="leafblade_throwing_knife"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="leaf_blade_dagger_head" Type="Blade" scale_factor="90" />
                <Piece id="sturgian_dagger_guard_5" Type="Guard" scale_factor="110" />
                <Piece id="khuzait_grip_2" Type="Handle" />
                <Piece id="vlandian_pommel_1" Type="Pommel" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <!-- Tribesman Throwing Knife -->
    <xsl:template match='CraftedItem[@id="desert_throwing_knife"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="tribesman_dagger_head" Type="Blade" scale_factor="110" />
                <Piece id="aserai_dagger_guard_4" Type="Guard" />
                <Piece id="aserai_grip_8" Type="Handle" />
                <Piece id="aserai_pommel_3" Type="Pommel" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <!-- Highland Throwing Knife -->
    <xsl:template match='CraftedItem[@id="celtic_throwing_dagger"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="highland_dagger_head" Type="Blade" scale_factor="90" />
                <Piece id="battania_dagger_guard_8" Type="Guard" />
                <Piece id="sturgian_grip_14" Type="Handle" />
                <Piece id="cleaver_pommel_4" Type="Pommel" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <!-- Broad Bladed Throwing Knife -->
    <xsl:template match='CraftedItem[@id="empire_throwingknife_t5"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="broad_blade_dagger_head" Type="Blade" scale_factor="110" />
                <Piece id="empire_dagger_guard_3" Type="Guard" scale_factor="110" />
                <Piece id="empire_grip_2" Type="Handle" scale_factor="110" />
                <Piece id="empire_pommel_1" Type="Pommel" scale_factor="110" />
            </Pieces>
        </xsl:copy>
    </xsl:template>


    <!--  -->
    <!--  -->
    <!--  -->
    <!-- THROWING AXES -->
    <!-- Switch to new custom Throwing Axe Heads -->
    <!--  -->
    <!--  -->
    <!--  -->

    <xsl:template match='CraftedItem[@id="highland_throwing_axe_1_t2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="franziska_head" Type="Blade" scale_factor="100" />
                <Piece id="axe_craft_12_handle" Type="Handle" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftedItem[@id="southern_throwing_axe_1_t4"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="franziska_head" Type="Blade" scale_factor="100" />
                <Piece id="axe_craft_12_handle" Type="Handle" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftedItem[@id="northern_throwing_axe_1_t1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="throwing_axe_head" Type="Blade" scale_factor="100" />
                <Piece id="axe_craft_11_handle" Type="Handle" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftedItem[@id="woodland_throwing_axe_1_t1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="throwing_axe_head" Type="Blade" scale_factor="100" />
                <Piece id="axe_craft_28_handle" Type="Handle" scale_factor="100" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftedItem[@id="western_throwing_axe_1_t1"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="franziska_head" Type="Blade" />
                <Piece id="axe_craft_11_handle" Type="Handle" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <!--  -->
    <!--  -->
    <!--  -->
    <!-- INDIVIDUAL ITEM CHANGES -->
    <!--  -->
    <!--  -->
    <!--  -->


    <!-- Broad Leaf Shaped Spear - Increase size of head -->
    <xsl:template match='CraftedItem[@id="northern_spear_2_t3"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <Pieces>
                <Piece id="spear_blade_40"
                    Type="Blade"
                    scale_factor="140" />
                <Piece id="spear_banner_10"
                    Type="Guard"
                    scale_factor="90" />
                <Piece id="spear_handle_21"
                    Type="Handle"
                    scale_factor="50" />
            </Pieces>
        </xsl:copy>
    </xsl:template>

    <xsl:template match='CraftedItem[@id="western_spear_1_t2"]'>
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:attribute name="name">{=hyq1zBg5}Simple Commoner Spear</xsl:attribute>
            <Pieces>
                <Piece id="spear_blade_1" Type="Blade" scale_factor="90" />
                <Piece id="spear_handle_5" Type="Handle" scale_factor="90" />
            </Pieces>
        </xsl:copy> 
    </xsl:template>

</xsl:stylesheet>