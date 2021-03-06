<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
  
  <xsl:output indent="yes"/>
  <xsl:key name="E" match="tei:elementSpec" use="'1'"/>
  <xsl:param name="Modules">analysis certainty core corpus declarefs dictionaries drama figures gaiji header iso-fs linking msdescription namesdates nets spoken tagdocs tei textcrit textstructure transcr verse</xsl:param>
  
  <xsl:template match="/">
    <choice xmlns="http://relaxng.org/ns/structure/1.0">
      <xsl:for-each select="key('E','1')">
	<xsl:sort select="@ident"/>
	<xsl:if test="contains($Modules,@module)">
	  <ref name="{@ident}"/>
	</xsl:if>
    </xsl:for-each>
    </choice>
  </xsl:template>
  
</xsl:stylesheet>



