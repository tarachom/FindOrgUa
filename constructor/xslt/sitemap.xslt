<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:output method="xml" indent="yes"  />

  <xsl:param name="DateTime" />
  
  <xsl:template match="root">

    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

      <xsl:for-each select="page">

        <url>

          <loc>
            <xsl:text>https://find.org.ua/</xsl:text>
            <xsl:value-of select="file"/>          
          </loc>

          <!--
          <lastmod>
            <xsl:value-of select="$DateTime"/>  
          </lastmod>
          -->
        
        </url>

      </xsl:for-each>
      
    </urlset>

  </xsl:template>

</xsl:stylesheet>
