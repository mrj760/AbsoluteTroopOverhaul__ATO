<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" />

    <!--Identity Transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

    <!-- Added custom piece -->
    <xsl:template match='CraftingTemplate[@id="TwoHandedPolearm"]/UsablePieces'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
                <UsablePiece piece_id="straight_scythe_head" />
                
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>