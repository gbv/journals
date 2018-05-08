<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mcrxml="xalan://org.mycore.common.xml.MCRXMLFunctions"
                xmlns:mods="http://www.loc.gov/mods/v3"
                xmlns:i18n="xalan://org.mycore.services.i18n.MCRTranslation"
                version="1.0" exclude-result-prefixes="mcrxml mods i18n">

    <xsl:import href="xslImport:modsmeta:metadata/mir-review.xsl"/>

    <xsl:template match="/">
        <xsl:if test="/mycoreobject">
            <xsl:variable name="ID" select="/mycoreobject/@ID"></xsl:variable>
            <div id="mir-review">
                <a href="{$WebApplicationBaseURL}review.xed?id={$ID}"><xsl:value-of
                  select="i18n:translate('mir.relatedItem.review.request')"/></a>
            </div>
        </xsl:if>
        <xsl:apply-imports/>
    </xsl:template>
</xsl:stylesheet>