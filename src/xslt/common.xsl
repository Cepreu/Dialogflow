<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                version="1.0">

    <!-- Page header template -->
    <xsl:template name="pageheader">
        <xsl:param name="MId"><xsl:value-of select="moduleId"/></xsl:param>
        
        <div data-role="header" data-position="fixed">
            <a href="#"
               data-icon="arrow-r" data-iconpos="right" class="ui-btn-right five9-ivr-next-btn"
               data-inline="true" moduleId="{$MId}">Next
            </a>
            <h1>
                <xsl:value-of select="moduleName"/>
            </h1>
        </div>
    </xsl:template>

    <!-- Page footer template -->
    <xsl:template name="pagefooter">
        <div data-role="footer" data-theme="d" data-position="fixed">
            <a href="#" class="five9-ivr-cancel-btn"
               data-corners="false"
               data-shadow="false"
               data-iconshadow="false"
               data-wrapperels="false">Cancel</a>
        </div>
    </xsl:template>

    <!-- Aux functions -->
    <xsl:template name="fieldName">
        <xsl:param name="field"></xsl:param>
        <xsl:param name="moduleId"></xsl:param>
        <xsl:call-template name="stripSpecialChars">
           <xsl:with-param name="theString" select="$field"/>
        </xsl:call-template>_<xsl:value-of select="$moduleId" />
    </xsl:template>

    <xsl:template name="stripSpecialChars">
        <xsl:param name="theString"></xsl:param>
        <xsl:variable name="vAllowedSymbols"
                      select="'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'"/>

        <xsl:value-of select="translate(
                $theString,
                translate($theString, $vAllowedSymbols, ''),
                ''
                )
            "/>
    </xsl:template>

    <xsl:template match="data/grammar">
    
        <xsl:variable name="id">
            <xsl:variable name="varName">
                <xsl:call-template name="stripSpecialChars">
                    <xsl:with-param name="theString" select="mainReturnValue/varName"/>
                </xsl:call-template>
            </xsl:variable>
            <xsl:value-of select="$varName"/>_<xsl:value-of select="../../moduleId"/><xsl:value-of select="string('_output')"/>
        </xsl:variable>
        
        <xsl:choose>
            <xsl:when test="@xsi:type='date'">
                <input type="date" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>
            <xsl:when test="@xsi:type='ccexpdate'">
                <input type="date" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>
            <xsl:when test="@xsi:type='time'">
                <input type="time" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>
            <xsl:when test="@xsi:type='phone'">
                <input type="tel" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>
            <xsl:when test="@xsi:type='number'">
                <input type="number" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>
            <xsl:when test="@xsi:type='digits'">
                <input type="number" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>
            <xsl:when test="@xsi:type='creditcard'">
                <input type="number" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:when>

            <xsl:otherwise>
                <input type="text" id="{$id}" name="{mainReturnValue/varName}"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>