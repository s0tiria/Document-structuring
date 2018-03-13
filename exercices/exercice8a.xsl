<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
	<html>
		<body>
			<h1>Corpus Air France</h1>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template match="info">
	<xsl:value-of select="prenom"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="nom"/>
	<xsl:text></xsl:text>
	<br/>
	<span style="font-weight: bold;">
		<xsl:value-of select="email"/>
	</span>
	<br/>
</xsl:template>

<xsl:template match="teiHeader">
	<br/>
	<xsl:for-each select="*/*">
		<xsl:value-of select="."/>
		<br/>
	</xsl:for-each>
</xsl:template>

<xsl:template match="head">
	<br/>
	<span style="font-weight: bold; color: green;">
		<xsl:value-of select="."/>
	</span>
	<br/>
</xsl:template>

<xsl:template match="u">
	<xsl:value-of select="."/>
	<br/>
</xsl:template>

</xsl:stylesheet>