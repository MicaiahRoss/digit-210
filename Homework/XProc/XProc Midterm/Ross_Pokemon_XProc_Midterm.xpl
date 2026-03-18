<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/1999/XProc" version="3.0">
    <p:output port="result"/>
    
    <p:invisible-xml>
        <p:with-input port="source" href="pokemon-moves-gen5.txt"/>
        <p:with-input port="grammar" href="Ross_Pokemon_XProc_Midterm.ixml"/>
    </p:invisible-xml>
    
    <p:xslt>
        <p:with-input port="stylesheet">
            <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
                <xsl:mode on-no-match="shallow-copy"/>
                <xsl:template match="move">
                    <move status="done"><xsl:apply-templates/></move>
                </xsl:template>
            </xsl:stylesheet>
        </p:with-input>
    </p:xslt>
    
    <p:xslt>
        <p:with-input port="stylesheet">
            <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
                <xsl:template match="/">
                    <html><body><xsl:for-each select="//move">
                                <p><xsl:value-of select="."/></p>
                    </xsl:for-each></body></html>
                </xsl:template>
            </xsl:stylesheet>
        </p:with-input>
    </p:xslt>
</p:declare-step>