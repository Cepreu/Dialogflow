<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

    <xsl:template name="getDigits">
        {
            "type": "getDigits",
            "id": "<xsl:value-of select='concat($__script_id__, "_" ,moduleId)'/>",
            "targetVariable": "<xsl:value-of select="data/targetVariableName" />"
        }
    </xsl:template>

</xsl:stylesheet>