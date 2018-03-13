<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/CorpusAnnote">

<link rel="stylesheet" type="text/css" href="exercice11c.css" />
	<html>
		<body>
			<table>
				<tr>
					<th colspan="2"><xsl:text/>Phrases</th>
				</tr>
				<tr>
					<th><xsl:text/>Anglais</th>
					<th><xsl:text/>Français</th>
				</tr>
				<xsl:for-each select="pair">
					<tr>
						<td> <xsl:value-of select="phraseEN" /> </td>
						<td> <xsl:value-of select="phraseFR" /> </td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>

</xsl:template>

</xsl:stylesheet>