<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match= "/">
        <h3>List of Admins</h3>
        <table border="1">
            <tr>
                <th>First Name</th><th>Last Name </th>          
            </tr>
            <xsl:apply-templates select="//admin" />
        </table>
    </xsl:template>
    <xsl:template match="admin">
        <tr>
            <td><xsl:value-of select="FirstName"/></td>
            <td><xsl:value-of select="LastName"/></td>
        </tr>
       
    </xsl:template>
</xsl:stylesheet>
