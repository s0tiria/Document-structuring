<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" />

<xsl:template match="/">
	<html>
		<body>
			<xsl:for-each select="/teiCorpus.2/TEI.2/text/group/text/body/div/u">
				<xsl:if test="self::u[contains(text(), 'quand')]">
					<span style="color: green;">
						<xsl:value-of select="../head"/>
						<xsl:text> - n: </xsl:text>
						<xsl:value-of select="@n"/>
						<xsl:text> - locuteur: </xsl:text>
						<xsl:value-of select="@who"/>
					</span>
					<span style="font-style: italic;">
						<br/>
						<xsl:text> Précédent: </xsl:text>
					</span>
					<xsl:value-of select="preceding-sibling::u[1]"/>
					<br/>
					<span style="font-style: italic;">
						<xsl:text>Contexte gauche: </xsl:text>
					</span>
					<xsl:value-of select="substring-before(.,'quand')"/>
					<br/>
					<span style="font-weight: bold; text-decoration:underline; color: blue;">
						<xsl:text>quand</xsl:text>
					</span>
					<br/>
					<span style="font-style: italic;">
						<xsl:text>Contexte droite: </xsl:text>
					</span>
					<xsl:value-of select="substring-after(.,'quand')"/>
					<br/>
					<span style="font-style: italic;">
						<xsl:text> Suivant: </xsl:text>
					</span>
						<xsl:value-of select="following-sibling::u[1]"/>
					<br/>
					<br/>
				</xsl:if>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>