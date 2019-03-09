<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <html>
            <table border="1" align="center" style="border: thin black">
                <tr bgcolor="#9BCDFD" align="center">
                    <!--Cambio el ancho de las celdas para combinarlas  -->
                    <td colspan="2">Datos</td>
                    <td colspan="4">Notas</td>
                </tr>
                <tr bgcolor="#0F4FFB" align="center">
                    <td>Nombre</td>
                    <td>Apellidos</td>
                    <td>Tareas</td>
                    <td>Cuestionarios</td>
                    <td>Examen</td>
                    <td>Final</td>
                </tr>
                    <xsl:apply-templates/>

            </table>
        </html>
    </xsl:template>
    <xsl:template match="alumno">
        <tr align="center">
        <xsl:if test="@convocatoria ='Junio'">
        <td bgcolor="#FFFFFF"><xsl:value-of select="nombre"/> </td>
        <td bgcolor="#FFFFFF"><xsl:value-of select="apellidos"/></td>
        <td bgcolor="#FFFE9F"><xsl:value-of select="tareas"/></td>
        <td bgcolor="#FFFE9F"><xsl:value-of select="cuestionarios"/></td>
        <td bgcolor="#FFFE9F"><xsl:value-of select="examen"/></td>
        <xsl:choose>
            <xsl:when test="final >= 9">
                <td bgcolor="#FED23B">SOBRESALIENTE</td>
            </xsl:when>
            <xsl:when test="final>=7 and final&lt;9">
                <td bgcolor="#FED23B">NOTABLE</td>
            </xsl:when>
            <xsl:when test="final >=5 and final &lt; 7">
                <td bgcolor="#FED23B">SUFICIENTE</td>
            </xsl:when>
            <xsl:otherwise>
                <td bgcolor="#FED23B">INSUFICIENTE</td>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:if>
    </tr>
    </xsl:template>
</xsl:stylesheet>