<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="moves">
        <svg width="500" height="500">
            <xsl:for-each select="move">
                
                <xsl:variable name="y-pos" select="position() * 30"/>
                
                <rect x="120" y="{$y-pos}" width="{power * 2}" height="15" fill="teal"/>
                
                <text x="0" y="{$y-pos + 12}" font-family="sans-serif" font-size="12">
                    <xsl:value-of select="name"/>
                </text>
                
            </xsl:for-each>
        </svg>
    </xsl:template>
</xsl:stylesheet>