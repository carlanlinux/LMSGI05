<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!--XSLT (2) - Ejercicio 1-1

Convertir las etiquetas en atributos:

<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo nombre="Museo del Prado" ciudad="Madrid" pais="España"/>
  <museo nombre="British Museum" ciudad="Londres" pais="Reino Unido"/>
  <museo nombre="National Gallery" ciudad="Londres" pais="Reino Unido"/>
</museos>-->


    <xsl:template match="museos">
    <museos>
        <xsl:apply-templates/>
    </museos>
    </xsl:template>

    <xsl:template match="museo">
        <museo>
            <nombre><xsl:attribute name="nombre"><xsl:value-of select="nombre"/> </xsl:attribute></nombre>
            <ubicacion>
                <xsl:attribute name="cuidad"><xsl:value-of select="cuidad"/></xsl:attribute>
                <xsl:attribute name="pais"><xsl:value-of select="pais"/></xsl:attribute>
            </ubicacion>
        </museo>
    </xsl:template>
    
</xsl:stylesheet>