<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Reading View</title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" type="text/css" href="styles.css"/>
            </head>
            <body>
                <xsl:apply-templates select="//body"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="QuestEvent">
       <span class="quest-event">
           <xsl:apply-templates/>
       </span>
    </xsl:template>
    
    <xsl:template match="QuestItem">
        <em class="quest-item">
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="character">
         <span class="character-name">
             <xsl:apply-templates/>
         </span>
     </xsl:template>
    
    <xsl:template match="epithet">
        <strong class="epithet">
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    <xsl:template match="location">
       <span class="location-name">
           <xsl:apply-templates/>
       </span>
    </xsl:template>
    
    <xsl:template match="faction[@ref='MythicDawn']">
        <span class="faction-mythic-dawn">
           <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="faction">
        <span class="faction-general">
           <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
    
    
</xsl:stylesheet>