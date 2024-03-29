﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
       
       <xsl:output omit-xml-declaration="yes"/>
       
       <!--Identity Transform -->
       <xsl:template match="@*|node()">
              <xsl:copy>
                     <xsl:apply-templates select="@*|node()"/>
              </xsl:copy>
       </xsl:template>
       


       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level1_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>    
                     <skill id="Athletics" value="20" />
                     <skill id="OneHanded" value="20" />
                     <skill id="TwoHanded" value="20" />
                     <skill id="Polearm" value="20" />
                     <skill id="Throwing" value="20" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level6_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="20" />
                     <skill id="Riding" value="5" />
                     <skill id="OneHanded" value="20" />
                     <skill id="TwoHanded" value="20" />
                     <skill id="Polearm" value="20" />
                     <skill id="Bow" value="5" />
                     <skill id="Crossbow" value="5" />
                     <skill id="Throwing" value="5" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level11_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="40" />
                     <skill id="Riding" value="5" />
                     <skill id="OneHanded" value="40" />
                     <skill id="TwoHanded" value="40" />
                     <skill id="Polearm" value="40" />
                     <skill id="Bow" value="15" />
                     <skill id="Crossbow" value="15" />
                     <skill id="Throwing" value="20" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level16_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="70" />
                     <skill id="Riding" value="10" />
                     <skill id="OneHanded" value="100" />
                     <skill id="TwoHanded" value="40" />
                     <skill id="Polearm" value="40" />
                     <skill id="Bow" value="30" />
                     <skill id="Crossbow" value="30" />
                     <skill id="Throwing" value="70" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level21_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="100" />
                     <skill id="Riding" value="15" />
                     <skill id="OneHanded" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Bow" value="45" />
                     <skill id="Crossbow" value="45" />
                     <skill id="Throwing" value="60" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level26_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="130" />
                     <skill id="Riding" value="20" />
                     <skill id="OneHanded" value="130" />
                     <skill id="TwoHanded" value="130" />
                     <skill id="Polearm" value="130" />
                     <skill id="Bow" value="60" />
                     <skill id="Crossbow" value="60" />
                     <skill id="Throwing" value="80" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_level31_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="170" />
                     <skill id="Riding" value="60" />
                     <skill id="OneHanded" value="220" />
                     <skill id="TwoHanded" value="260" />
                     <skill id="Polearm" value="260" />
                     <skill id="Bow" value="50" />
                     <skill id="Crossbow" value="25" />
                     <skill id="Throwing" value="40" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="infantry_heavyinfantry_highestlevel_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="185" />
                     <skill id="Bow" value="80" />
                     <skill id="Crossbow" value="80" />
                     <skill id="OneHanded" value="240" />
                     <skill id="Polearm" value="200" />
                     <skill id="Riding" value="80" />
                     <skill id="Throwing" value="190" />
                     <skill id="TwoHanded" value="240" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level1_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="10" />
                     <skill id="OneHanded" value="20" />
                     <skill id="Polearm" value="20" />
                     <skill id="Riding" value="20" />
                     <skill id="TwoHanded" value="20" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level6_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="10" />
                     <skill id="Riding" value="10" />
                     <skill id="OneHanded" value="20" />
                     <skill id="TwoHanded" value="20" />
                     <skill id="Polearm" value="20" />
                     <skill id="Bow" value="5" />
                     <skill id="Crossbow" value="5" />
                     <skill id="Throwing" value="10" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level11_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="20" />
                     <skill id="Riding" value="40" />
                     <skill id="OneHanded" value="60" />
                     <skill id="TwoHanded" value="40" />
                     <skill id="Polearm" value="40" />
                     <skill id="Bow" value="20" />
                     <skill id="Crossbow" value="5" />
                     <skill id="Throwing" value="5" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level16_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="60" />
                     <skill id="Riding" value="70" />
                     <skill id="OneHanded" value="70" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Bow" value="30" />
                     <skill id="Crossbow" value="10" />
                     <skill id="Throwing" value="10" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level21_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="40" />
                     <skill id="Riding" value="110" />
                     <skill id="OneHanded" value="110" />
                     <skill id="TwoHanded" value="160" />
                     <skill id="Polearm" value="150" />
                     <skill id="Bow" value="40" />
                     <skill id="Crossbow" value="15" />
                     <skill id="Throwing" value="15" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level26_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="80" />
                     <skill id="Riding" value="130" />
                     <skill id="OneHanded" value="130" />
                     <skill id="TwoHanded" value="160" />
                     <skill id="Polearm" value="160" />
                     <skill id="Bow" value="60" />
                     <skill id="Crossbow" value="20" />
                     <skill id="Throwing" value="60" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_level31_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="60" />
                     <skill id="Riding" value="200" />
                     <skill id="OneHanded" value="200" />
                     <skill id="TwoHanded" value="260" />
                     <skill id="Polearm" value="260" />
                     <skill id="Bow" value="60" />
                     <skill id="Crossbow" value="25" />
                     <skill id="Throwing" value="45" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="cavalry_lightcavalry_heavycavalry_highestlevel_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="175" />
                     <skill id="Bow" value="70" />
                     <skill id="Crossbow" value="70" />
                     <skill id="OneHanded" value="240" />
                     <skill id="Polearm" value="240" />
                     <skill id="Riding" value="260" />
                     <skill id="Throwing" value="110" />
                     <skill id="TwoHanded" value="200" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level1_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="20" />
                     <skill id="Bow" value="20" />
                     <skill id="Crossbow" value="20" />
                     <skill id="OneHanded" value="20" />
                     <skill id="Throwing" value="20" />
                     <skill id="TwoHanded" value="20" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level6_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="20" />
                     <skill id="Riding" value="5" />
                     <skill id="OneHanded" value="20" />
                     <skill id="TwoHanded" value="10" />
                     <skill id="Polearm" value="5" />
                     <skill id="Bow" value="20" />
                     <skill id="Crossbow" value="20" />
                     <skill id="Throwing" value="20" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level11_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="40" />
                     <skill id="Riding" value="5" />
                     <skill id="OneHanded" value="40" />
                     <skill id="TwoHanded" value="15" />
                     <skill id="Polearm" value="20" />
                     <skill id="Bow" value="40" />
                     <skill id="Crossbow" value="40" />
                     <skill id="Throwing" value="40" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level16_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="70" />
                     <skill id="Riding" value="10" />
                     <skill id="OneHanded" value="70" />
                     <skill id="TwoHanded" value="40" />
                     <skill id="Polearm" value="30" />
                     <skill id="Bow" value="100" />
                     <skill id="Crossbow" value="100" />
                     <skill id="Throwing" value="100" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level21_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="100" />
                     <skill id="Riding" value="15" />
                     <skill id="OneHanded" value="100" />
                     <skill id="TwoHanded" value="60" />
                     <skill id="Polearm" value="60" />
                     <skill id="Bow" value="100" />
                     <skill id="Crossbow" value="100" />
                     <skill id="Throwing" value="100" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level26_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="130" />
                     <skill id="Riding" value="20" />
                     <skill id="OneHanded" value="130" />
                     <skill id="TwoHanded" value="30" />
                     <skill id="Polearm" value="80" />
                     <skill id="Bow" value="160" />
                     <skill id="Crossbow" value="160" />
                     <skill id="Throwing" value="160" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_level31_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="160" />
                     <skill id="Bow" value="210" />
                     <skill id="Crossbow" value="210" />
                     <skill id="OneHanded" value="110" />
                     <skill id="Polearm" value="70" />
                     <skill id="Riding" value="40" />
                     <skill id="Throwing" value="160" />
                     <skill id="TwoHanded" value="110" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="ranged_skirmisher_highestlevel_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="220" />
                     <skill id="Bow" value="240" />
                     <skill id="Crossbow" value="240" />
                     <skill id="OneHanded" value="120" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="70" />
                     <skill id="Throwing" value="180" />
                     <skill id="TwoHanded" value="130" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level1_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="10" />
                     <skill id="Bow" value="20" />
                     <skill id="Crossbow" value="20" />
                     <skill id="OneHanded" value="20" />
                     <skill id="Polearm" value="20" />
                     <skill id="Riding" value="20" />
                     <skill id="Throwing" value="20" />
                     <skill id="TwoHanded" value="20" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level6_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="20" />
                     <skill id="Riding" value="10" />
                     <skill id="OneHanded" value="5" />
                     <skill id="TwoHanded" value="5" />
                     <skill id="Polearm" value="5" />
                     <skill id="Bow" value="20" />
                     <skill id="Crossbow" value="20" />
                     <skill id="Throwing" value="5" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level11_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="20" />
                     <skill id="Riding" value="40" />
                     <skill id="OneHanded" value="10" />
                     <skill id="TwoHanded" value="10" />
                     <skill id="Polearm" value="55" />
                     <skill id="Bow" value="40" />
                     <skill id="Crossbow" value="40" />
                     <skill id="Throwing" value="5" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level16_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="40" />
                     <skill id="Riding" value="70" />
                     <skill id="OneHanded" value="45" />
                     <skill id="TwoHanded" value="15" />
                     <skill id="Polearm" value="30" />
                     <skill id="Bow" value="70" />
                     <skill id="Crossbow" value="70" />
                     <skill id="Throwing" value="25" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level21_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="45" />
                     <skill id="Riding" value="110" />
                     <skill id="OneHanded" value="40" />
                     <skill id="TwoHanded" value="40" />
                     <skill id="Polearm" value="110" />
                     <skill id="Bow" value="150" />
                     <skill id="Crossbow" value="15" />
                     <skill id="Throwing" value="15" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level26_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="80" />
                     <skill id="Riding" value="130" />
                     <skill id="OneHanded" value="50" />
                     <skill id="TwoHanded" value="50" />
                     <skill id="Polearm" value="130" />
                     <skill id="Bow" value="160" />
                     <skill id="Crossbow" value="160" />
                     <skill id="Throwing" value="60" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_level31_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="60" />
                     <skill id="Riding" value="200" />
                     <skill id="OneHanded" value="60" />
                     <skill id="TwoHanded" value="60" />
                     <skill id="Polearm" value="220" />
                     <skill id="Bow" value="260" />
                     <skill id="Crossbow" value="260" />
                     <skill id="Throwing" value="30" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="horsearcher_highestlevel_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="140" />
                     <skill id="Bow" value="220" />
                     <skill id="Crossbow" value="210" />
                     <skill id="OneHanded" value="150" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="260" />
                     <skill id="Throwing" value="130" />
                     <skill id="TwoHanded" value="70" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_1_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <!-- <skill id="Athletics" value="80" /> #OLD_SKILL# -->
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <!--<skill id="Shield" value="60" />-->
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="120" />
                     <skill id="Tactics" value="200" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_2_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="200" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_3_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="180" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_4_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <!-- <skill id="Athletics" value="80" /> #OLD_SKILL# -->
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <!--<skill id="Shield" value="60" />-->
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="180" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_5_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="150" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_6_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="150" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_7_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="130" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_8_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="130" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_9_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="130" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_10_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="100" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_11_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="100" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_12_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="15" />
              </xsl:copy>
       </xsl:template>
       <xsl:template match='SkillSet[@id="custombattle_commander_13_template_skills"]'>
              <xsl:copy>
                     <xsl:apply-templates select="@*"/>
                     <skill id="Athletics" value="90" />
                     <skill id="Bow" value="100" />
                     <skill id="OneHanded" value="100" />
                     <skill id="Polearm" value="100" />
                     <skill id="Riding" value="160" />
                     <skill id="Throwing" value="100" />
                     <skill id="TwoHanded" value="100" />
                     <skill id="Tactics" value="70" />
              </xsl:copy>
       </xsl:template>
       
</xsl:stylesheet>