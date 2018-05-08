<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mods="http://www.loc.gov/mods/v3"
                version="1.0">
  <xsl:output method="xml" /> <!--encoding="ISO-8859-1" indent="yes" -->

  <xsl:param name="WebApplicationBaseURL" />


  <xsl:template match="/mycoreobject">
    <review>
      <titles>
        <title>
          <xsl:value-of select="metadata/def.modsContainer/modsContainer/mods:mods/mods:titleInfo/mods:title" />
        </title>
      </titles>
      <authors>
        <author>
          <xsl:value-of select="metadata/def.modsContainer/modsContainer/mods:mods/mods:name/mods:displayForm" />
        </author>
      </authors>
      <link>
        <xsl:value-of select="concat($WebApplicationBaseURL, '/receive/', @ID)" />
      </link>
      <originInfo>
        <publisher>
          <xsl:value-of select="metadata/def.modsContainer/modsContainer/mods:mods/mods:originInfo/mods:publisher" />
        </publisher>
        <date>
            <xsl:value-of select="metadata/def.modsContainer/modsContainer/mods:mods/mods:originInfo/mods:dateIssued" />
        </date>
      </originInfo>
      <physicalDescription>
        <extent>
          <xsl:value-of
            select="metadata/def.modsContainer/modsContainer/mods:mods/mods:physicalDescription/mods:extent" />
        </extent>
      </physicalDescription>
      <notes>
        <note>
          <xsl:if test="contains(metadata/def.modsContainer/modsContainer/mods:mods/mods:note/@type, 'price')">
            <xsl:value-of select="metadata/def.modsContainer/modsContainer/mods:mods/mods:note"/>
          </xsl:if>
        </note>
      </notes>
      <from>

      </from>
      <replyTo>

      </replyTo>
      <to>

      </to>
      <bcc>

      </bcc>
      <subject>

      </subject>
      <body>

      </body>
      <parts>

      </parts>
    </review>
  </xsl:template>
</xsl:stylesheet>