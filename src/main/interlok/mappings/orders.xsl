<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:param name="timestamp" />
  <xsl:param name="company" />
  
  <xsl:template match="Results">
    <message>
      <status>OK</status>
      <timestamp><xsl:value-of select="$timestamp" /></timestamp>
      <orders>
        <company><xsl:value-of select="$company" /></company>
        <xsl:apply-templates />
      </orders>
    </message>
  </xsl:template>
  <xsl:template match="Row">
    <order>
      <xsl:apply-templates />
    </order>
  </xsl:template>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
