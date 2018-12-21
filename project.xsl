<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>All users:</h1>
                <table border="1px">
                    <tr style="font-weight:bold">
                        <td>Name:</td>
                        <td>Age:</td>
                        <td>Sex:</td>
                        <td>Place:</td>
                        <td>Time:</td>
                    </tr>
                    <xsl:apply-templates select="//user"></xsl:apply-templates>
                </table>
                <h2>Best matches:</h2>
                <table>
                    <xsl:apply-templates select="//user[@place='Park']"/>
                </table>
                <table>
                    <xsl:apply-templates select="//user[@place='Bar']"/>
                </table>
                <table>
                    <xsl:apply-templates select="//user[@place='Restourant']"/>
                </table>
                <table>
                    <xsl:apply-templates select="//user[@place='KFC']"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="user">
        <tr>
            <td><xsl:value-of select="@name"/></td>
            <td><xsl:value-of select="@age"/></td>
            <td><xsl:value-of select="@sex"/></td>
            <td><xsl:value-of select="@place"/></td>
            <td><xsl:value-of select="@time"/>.00</td>
        </tr>
    </xsl:template>
</xsl:stylesheet>