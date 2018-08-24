<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template name="skillTransfer">
        {
            "type": "skillTransfer",
            "id": "<xsl:value-of select='concat($__script_id__, "_" ,moduleId)'/>"
        }
    </xsl:template>

</xsl:stylesheet>