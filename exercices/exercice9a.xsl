<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
	<xsl:apply-templates select="document/oeuvre"/>
</xsl:template>

<xsl:template match="oeuvre">
	<xsl:for-each select="oeuvre">
		<xsl:sort select="auteur1" data-type="text" order="ascending"/>
	</xsl:for-each>
	
	<span style="color: green; font-weight: bold; font-style: italic;">
		<br/>
		<xsl:text> Oeuvre de </xsl:text>
		<xsl:value-of select="auteur1"/><xsl:text>; </xsl:text>
		<xsl:value-of select="auteur2"/><br/>
	</span>
	<xsl:value-of select="."/><br/>
	<br/>
</xsl:template>
 
</xsl:stylesheet>
