<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:strip-space elements="*"/>

    <xsl:template match="ies">
        <html>
            <h1><xsl:value-of select="@nombre"/></h1>
                 <p>Página web: <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="@web"/>
                    </xsl:attribute>
                 <xsl:value-of select="@web"/>
                </a>
                </p>
            <ul>
                <xsl:apply-templates/>
            </ul>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <li><xsl:value-of select="nombe"/></li>
    </xsl:template>

</xsl:stylesheet>