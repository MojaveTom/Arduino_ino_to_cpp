<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
    xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

    <xsl:template match = "/" >

        <xsl:for-each select = "//compounddef/sectiondef[@kind='func']/memberdef">
            <xsl:text>
</xsl:text>
            <xsl:value-of select = "definition"/>
            <xsl:value-of select = "argsstring"/>
            <xsl:text>;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
