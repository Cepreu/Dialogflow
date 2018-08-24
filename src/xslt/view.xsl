<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >

    <xsl:output method="html" encoding="utf-8" indent="yes" omit-xml-declaration="yes" standalone="yes" />

    <!-- parameters -->
    <xsl:param name="target_domain" select="''"/>
    <xsl:param name="session_url" select="''"/>
    <xsl:param name="__script_modules__" select="''"/>

    <xsl:template match="/view">
        {
        "modules":
            [
                <xsl:value-of disable-output-escaping="yes" select="$__script_modules__"/>
            ]
        }
    </xsl:template>

</xsl:stylesheet>