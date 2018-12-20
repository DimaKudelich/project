<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
        <table>
          <xsl:apply-templates select="//user[@age &gt;=15]"/>
        </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="user">
        <tr>
            <td><xsl:value-of select="@name"/></td>
            <td><xsl:value-of select="@age"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>