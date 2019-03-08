<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!--XSLT (2) - Ejercicio 1-4

Cambiar la estructura del documento y algunas etiquetas en atributos:

<?xml version="1.0" encoding="UTF-8"?>
<ciudades>
  <ciudad nombre="Madrid" pais="España">
    <museo>Museo del Prado</museo>
  </ciudad>
  <ciudad nombre="Londres" pais="Reino Unido">
    <museo>British Museum</museo>
  </ciudad>
  <ciudad nombre="Londres" pais="Reino Unido">
    <museo>National Gallery</museo>
  </ciudad>
</ciudades>
-->
    <xsl:strip-space elements="*"/>
    <xsl:template match="museos">
        <ciudades>
            <xsl:apply-templates/>
        </ciudades>
    </xsl:template>
    <xsl:template match="museo">
        <ciudad>
            <xsl:attribute name="nombre"><xsl:value-of select="ciudad"/></xsl:attribute>
            <xsl:attribute name="pais"><xsl:value-of select="pais"/></xsl:attribute>
                <nombre>
                  <xsl:value-of select="nombre"/>
                </nombre>
        </ciudad>
    </xsl:template>
</xsl:stylesheet>