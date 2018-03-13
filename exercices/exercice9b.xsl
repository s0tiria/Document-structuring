<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
<html>
	<body>
		<xsl:for-each select="document/oeuvre">
		<span style="color: green; font-weight: bold;">
			<xsl:text>N° d'inventaire : </xsl:text>
		</span>
		<xsl:value-of select="numeroInventaire"/>
		<br/>
		<span style="color: blue; font-style: italic;">
		<xsl:text>Auteur 1 : </xsl:text>
		</span>
		<xsl:value-of select="auteur1"/>
		<br/>
		<span style="color: blue; font-style: italic;">
		<xsl:text>Auteur 2 : </xsl:text>
		</span>
		<xsl:value-of select="auteur2"/>
		<br/>
		<br/>
		</xsl:for-each>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>