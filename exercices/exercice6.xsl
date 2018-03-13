<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/table">
<link rel="stylesheet" type="text/css" href="exercice6.css" />
<html>
	<head>
		<title>Les infirmières</title>
	</head>
	<body>
		<table>
			<tr>
				<th><xsl:text/>Numéro</th>
				<th><xsl:text/>âge</th>
				<th><xsl:text/>années d'étude</th>
				<th><xsl:text/>diplôme</th>
				<th><xsl:text/>ancienneté</th>
				<th><xsl:text/>service</th>
			</tr>
			<xsl:for-each select="ligne">
				<xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
					<tr>
						<td colspan="6"><xsl:value-of select="./classe_anciennete"/> :</td>
					</tr>
				</xsl:if>
				<tr>
					<td><xsl:value-of select="infirmiere"/></td>
					<td><xsl:value-of select="age"/></td>
					<td><xsl:value-of select="annees_etudes"/></td>
					<td><xsl:value-of select="diplome"/></td>
					<td><xsl:value-of select="anciennete_neonatalite"/></td>
					<td><xsl:value-of select="service"/></td>
				</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>