<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">All users:</h1>
                <table border="1px" align="center">
                    <tr style="font-weight:bold">
                        <td>Name:</td>
                        <td>Age:</td>
                        <td>Sex:</td>
                        <td>Place:</td>
                        <td>Time:</td>
                    </tr>
                    <xsl:apply-templates select="//user"></xsl:apply-templates>
                </table >
                <h2 align="center">Best matches in Park</h2>
                <table border="1px" align="center">
                    <xsl:apply-templates select="//user[@place='Park']"/>
                </table>
                <h2 align="center">Best matches in Bar</h2>
                <table border="1px" align="center">
                    <xsl:apply-templates select="//user[@place='Bar']"/>
                </table>
                <h2 align="center">Best matches in Restourant</h2>
                <table border="1px" align="center">
                    <xsl:apply-templates select="//user[@place='Restourant']"/>
                </table>
                <h2 align="center">Best matches in KFC</h2>
                <table border="1px" align="center">
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