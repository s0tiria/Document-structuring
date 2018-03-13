<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes" encoding="UTF-8" />

<xsl:template match="/">
<html>
	<body>
		<doc>
			<xsl:apply-templates select="doc"/>
		</doc>
		<br/>
	</body>
</html>
</xsl:template>
    
<xsl:template match="doc/*">
	<span style="font-weight: bold; color: green;">
		&lt;<xsl:value-of select="name()"/>&gt;<br/>
	</span>
	<xsl:for-each select="taggertoken">
	<span style="font-style: italic; color: blue;">
		<xsl:variable name="categorie" select="substring(@pos, 1, 3)" />
		<xsl:variable name="genreNombre" select="substring(@pos,5)"/>
		&lt;<xsl:value-of select="$categorie"/><xsl:text> gram="</xsl:text><xsl:value-of select="$genreNombre"/><xsl:text>"</xsl:text>&gt;<span style="font-style: normal; color: black;"><xsl:value-of select="./@wordform"/></span>&lt;<xsl:text>/</xsl:text><xsl:value-of select="$categorie"/>&gt;<br/>
		
		<!-- Si on veut mettre des espaces avant et après les balises, par ex: <PRP gram=""> de </PRP>
		&lt;<xsl:value-of select="$categorie"/><xsl:text> gram="</xsl:text><xsl:value-of select="$genreNombre"/><xsl:text>"</xsl:text>&gt;
		<span style="font-style: normal; color: black;">
			<xsl:value-of select="./@wordform"/>
		</span>
		&lt;<xsl:text>/</xsl:text><xsl:value-of select="$categorie"/>&gt;<br/>
		-->
		
	</span>
	</xsl:for-each>
	<br/>

</xsl:template>

</xsl:stylesheet>