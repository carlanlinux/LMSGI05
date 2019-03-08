<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="museos">
        <museos>
            <xsl:apply-templates/>
        </museos>
    </xsl:template>
    
    <xsl:template match="museo">
        <museo>
            <nombre><xsl:value-of select="nombre"/></nombre>
            <ubicacion>
                <xsl:attribute name="Cudiad"><xsl:value-of select="ciudad"/></xsl:attribute>
                <xsl:attribute name="Pais"><xsl:value-of select="pais"/></xsl:attribute>
            </ubicacion>
        </museo>
        
    </xsl:template>

</xsl:stylesheet>