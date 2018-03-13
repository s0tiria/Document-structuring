<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/table">
<link rel="stylesheet" type="text/css" href="exercice4.css" />
<html>
	<body>
		<table>
			<tr>
				<th><xsl:text/>Document à DTD embarquée</th>
				<th><xsl:text/>Hypothèse sur la ou les discordance(s) en notant la ou les partie(s) concernée(s) dans le document XML</th>
				<th><xsl:text/>Diagnostic RXP</th>
			</tr>
			<xsl:for-each select="document">
				<tr>
					<td><xsl:value-of select="@nom"/></td>
					<td><xsl:value-of select="hypothese"/></td>
					<td><xsl:value-of select="diagnostic"/></td>
				</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>

<xsl:template match="@nom">
	<span style="color: blue; font-style: italic;">
		<xsl:value-of select="@nom"/>
		<xsl:text></xsl:text>
	</span>
</xsl:template>

</xsl:stylesheet>