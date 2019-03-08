<?xml version="1.0" encoding="UTF-8"?>

    <!--Cambiar la estructura del documento y algunas etiquetas en atributos:

<?xml version="1.0" encoding="UTF-8"?>
<paises>
  <pais nombre="España">
    <museo museo="Museo del Prado" ciudad="Madrid"/>
  </pais>
  <pais nombre="Reino Unido">
    <museo museo="British Museum" ciudad="Londres"/>
  </pais>
  <pais nombre="Reino Unido">
    <museo museo="National Gallery" ciudad="Londres"/>
  </pais>
</paises>
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="museos">
        <paises>
            <xsl:apply-templates/>
        </paises>
    </xsl:template>
    <xsl:template match="museo">
        <pais>
            <xsl:attribute name="nombre"><xsl:value-of select="pais"/></xsl:attribute>
            <museo>
                <xsl:attribute name="museo"><xsl:value-of select="nombre"/></xsl:attribute>
                <xsl:attribute name="ciudad"><xsl:value-of select="ciudad"/></xsl:attribute>
            </museo>
        </pais>
    </xsl:template>
</xsl:stylesheet>