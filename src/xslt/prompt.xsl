<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="ttsPrompt">
   <xsl:apply-templates select="speakElement"/>
</xsl:template>


<xsl:template match="attributes|interruptible|promptTTSEnumed|canChangeInterruptableOption|ttsEnumed|exitModuleOnException|count"/>

<xsl:template match="items/paragraphElement">
   <xsl:apply-templates select="items"/>
</xsl:template>

<xsl:template match="items/sentenceElement">
   <xsl:apply-templates select="items"/>. 
</xsl:template>

<xsl:template match="items/prosodyElement">
    <xsl:apply-templates select="items"/>
</xsl:template>

<xsl:template match="items/emphasisElement">
  <xsl:choose>
     <xsl:when test="attributes/levelAttr/levelAttributeValue/@value='strong'">
        <xsl:apply-templates select="items"/>
     </xsl:when>
     <xsl:when test="attributes/levelAttr/levelAttributeValue/@value='moderate'">
        <xsl:apply-templates select="items"/>
     </xsl:when>
     <xsl:otherwise>
        <xsl:apply-templates select="items"/>
     </xsl:otherwise>
  </xsl:choose> 
</xsl:template>

<xsl:template match="items/sayAsElement">
   <xsl:value-of select="items/textElement/body"/>
</xsl:template>

<xsl:template match="breakElement">

</xsl:template>

<xsl:template match="items/variableElement">
   <xsl:variable name='fName'>
         <xsl:call-template name="fieldName">
            <xsl:with-param name="field" select="variableName"/>
            <xsl:with-param name="moduleId" select="ancestor::play/moduleId"/>
         </xsl:call-template>
      </xsl:variable>
   $<xsl:value-of select="variableName"/>
</xsl:template>


</xsl:stylesheet>