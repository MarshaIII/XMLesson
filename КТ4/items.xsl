<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <items>
      <xsl:apply-templates/>
    </items>
  </xsl:template>

  <xsl:template match="li">
    <xsl:param name="parentid" select="0"/>
    <item id="{@data-id}" parentid="{$parentid}" author="{b}">
      <xsl:value-of select="span"/>
    </item>
  
    <xsl:apply-templates select="ul/li">
      <xsl:with-param name="parentid" select="@data-id"/>
    </xsl:apply-templates>
  </xsl:template>

</xsl:stylesheet>

