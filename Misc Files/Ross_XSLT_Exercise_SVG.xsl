<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="text">
        <text>
            <xsl:apply-templates/>
        </text>
    </xsl:template>
    
    <xsl:template match="poem">
        <poem xml:id="p-{count(preceding-sibling::poem) + 1}">
            <xsl:apply-templates select="node()"/>
        </poem>
    </xsl:template>
    
    <xsl:template match="poem/title">
        <title>
            <xsl:apply-templates/>
        </title>
    </xsl:template>
    
    <xsl:template match="pb">
        <pb n="{@n}"/>
    </xsl:template>
    
    <xsl:template match="lb">
        <lb n="{count(preceding-sibling::lb) + 1}"/>
    </xsl:template>
    
</xsl:stylesheet>