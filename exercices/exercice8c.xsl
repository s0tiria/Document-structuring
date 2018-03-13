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
	<span style="color: green; font-weight: bold;">
		<xsl:value-of select="."/>
	</span>
	<br/>
</xsl:template>

<xsl:template match="u">
	<xsl:choose>
		<xsl:when test="contains(. , 'ah bon')">
			<xsl:value-of select="substring-before(. , 'ah bon')"/>
			<interj>ah bon</interj>
			<!-- si on voulait afficher les balises: <xsl:text>&lt;interj&gt;ah bon&lt;/interj&gt;</xsl:text> --> 
			<xsl:value-of select="substring-after(. , 'ah bon')"/>
		</xsl:when>
		<xsl:when test="contains(. , 'ah oui')">
			<xsl:value-of select="substring-before(. , 'ah oui')"/>
			<interj>ah oui</interj>
			<!-- si on voulait afficher les balises: <xsl:text>&lt;interj&gt;ah oui&lt;/interj&gt;</xsl:text> --> 
			<xsl:value-of select="substring-after(. , 'ah oui')"/>
		</xsl:when>
		<xsl:when test="contains(. , 'ah')">
			<xsl:value-of select="substring-before(. , 'ah')"/>
			<interj>ah</interj>
			<!-- si on voulait afficher les balises: <xsl:text>&lt;interj&gt;ah&lt;/interj&gt;</xsl:text> --> 
			<xsl:value-of select="substring-after(. , 'ah')"/>
		</xsl:when>
		<xsl:otherwise>
		<xsl:value-of select="."/>
		</xsl:otherwise>
	</xsl:choose>
	<br/>
</xsl:template>

</xsl:stylesheet>