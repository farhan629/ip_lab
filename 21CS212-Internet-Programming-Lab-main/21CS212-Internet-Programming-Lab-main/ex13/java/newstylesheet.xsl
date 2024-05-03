<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .unavailable {
                        color: red;
                    }
                </style>
            </head>
            <body>
                <h2>Books</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="available = 'no'">
                                    <td class="unavailable">
                                        <xsl:value-of select="title"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="title"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <xsl:value-of select="price"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
