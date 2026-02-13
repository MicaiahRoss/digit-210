<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="\[(.+?)\]" flags="s">
            <xsl:matching-substring>
                <stage><xsl:value-of select="regex-group(1)"/></stage>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:analyze-string select="." regex="^([A-Z\s]+):" flags="m">
                    <xsl:matching-substring>
                        <spk><xsl:value-of select="regex-group(1)"/></spk>
                        <xsl:text>:</xsl:text>
                    </xsl:matching-substring>
                    <xsl:non-matching-substring>
                        <xsl:value-of select="."/>
                    </xsl:non-matching-substring>
                </xsl:analyze-string>
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <xsl:template match="sp[not(node())]">
        <scene-direction>
            <xsl:apply-templates select="@*"/>
            <xsl:text>Scene Direction Placeholder</xsl:text>
        </scene-direction>
    </xsl:template>
    
</xsl:stylesheet>