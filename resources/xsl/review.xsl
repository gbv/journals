<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
  <xsl:output method="xml" /> <!--encoding="ISO-8859-1" indent="yes" -->

  <xsl:param name="WebApplicationBaseURL" />
  <xsl:param name="MIR.reviewMail.receiver" />

  <xsl:template match="/review">
    <email>
      <from>
        <xsl:value-of select="from" />
      </from>
      <!-- <replyTo>

       </replyTo>-->
      <to>
        <xsl:value-of select="$MIR.reviewMail.receiver" />
      </to>
      <!--<bcc>

      </bcc>-->
      <subject>
        <xsl:text>Rezensionsanfrage</xsl:text>
        <xsl:text>&#xa;</xsl:text>
      </subject>
      <body>
        <xsl:if test="name">
          <xsl:value-of select="name" />
          <xsl:text> stellt Antrag auf Rezension von:</xsl:text>
          <xsl:text>&#xa;</xsl:text>
          <xsl:value-of
            select="titles/title" />
        </xsl:if>

        <xsl:if test="body">
          <xsl:text>&#xa;</xsl:text>
          <xsl:text>Kommentar:</xsl:text>
          <xsl:text>&#xa;</xsl:text>
          <xsl:value-of select="body" />
        </xsl:if>
        <xsl:text>&#xa;</xsl:text>
        <xsl:text>Link:</xsl:text>
        <xsl:text>&#xa;</xsl:text>
        <xsl:value-of select="link" />
      </body>
      <!-- <parts>

       </parts>-->
    </email>
  </xsl:template>
</xsl:stylesheet>