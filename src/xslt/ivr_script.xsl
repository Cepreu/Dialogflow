<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >

    <xsl:output method="html" encoding="utf-8" indent="yes" omit-xml-declaration="yes" standalone="yes" />

    <!-- Include templates  -->
    <xsl:include href="common.xsl"/>
    <xsl:include href="aux_module.xsl"/>
    <xsl:include href="menu_module.xsl"/>
    <xsl:include href="input_module.xsl"/>
    <xsl:include href="play_module.xsl"/>
    <xsl:include href="get_digits_module.xsl"/>
    <xsl:include href="hangup_module.xsl"/>
    <xsl:include href="skill_transfer_module.xsl"/>
    <xsl:include href="lookup_contact_module.xsl"/>
    <xsl:include href="query_module.xsl" />
    <xsl:include href="system_info_module.xsl" />
    <xsl:include href="conference_module.xsl" />
    <xsl:include href="voice_input_module.xsl" />
    <xsl:include href="agent_transfer_module.xsl" />
   <xsl:include href="prompt.xsl" />

    <!-- parameters -->
    <xsl:param name="target_domain" select="''"/>
    <xsl:param name="session_url" select="''"/>
    <xsl:param name="__script_id__" select="''"/>

    <xsl:template match="/ivrScript">
            <xsl:for-each select="modules/input">
                <xsl:call-template name="input" />,
            </xsl:for-each>

            <xsl:for-each select="modules/menu">
                <xsl:call-template name="menu" />,
            </xsl:for-each>

            <xsl:for-each select="modules/play">
                <xsl:call-template name="play"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/getDigits">
                <xsl:call-template name="getDigits"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/hangup">
                <xsl:call-template name="hangup"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/skillTransfer">
                <xsl:call-template name="skillTransfer"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/lookupContactRecord">
                <xsl:call-template name="lookupContactRecord"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/query">
                <xsl:call-template name="query"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/systemInfo">
                <xsl:call-template name="systemInfo"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/conference">
                <xsl:call-template name="conference"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/agentTransfer">
                <xsl:call-template name="agentTransfer"/>,
            </xsl:for-each>

            <xsl:for-each select="modules/recording">
                <xsl:call-template name="voiceInput"/>,
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>