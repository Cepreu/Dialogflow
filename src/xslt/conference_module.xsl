<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:template name="conference">
        {
            "type": "conference",
            "id": "<xsl:value-of select='concat($__script_id__, "_" ,moduleId)'/>",
            "prompt": "<xsl:apply-templates select="data/enterNewParticipantPhoneNumberPrompt/ttsPrompt/speakElement/items"/>"
        }
    </xsl:template>

</xsl:stylesheet>