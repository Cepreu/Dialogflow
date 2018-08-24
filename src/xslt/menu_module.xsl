<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

    <xsl:template name="menu">
        {
            "type": "menu",
            "id": "<xsl:value-of select='concat($__script_id__, "_" ,moduleId)'/>",
            "branches": [
            <xsl:for-each select="data/branches/entry">
                {
                    "id": "<xsl:value-of select="key"/>",
                    "name": "<xsl:value-of select="value/name"/>",
                    "desc": "<xsl:value-of select="value/desc" />"
                },
            </xsl:for-each>
                {
                    "id": null
                }
            ]
        }
    </xsl:template>

</xsl:stylesheet>