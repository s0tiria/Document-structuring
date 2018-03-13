<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" />

<xsl:template match="/">
	<html>
		<body>
		<h1>Recommandation XSLT 1.0</h1>
			<xsl:for-each select="doc/taggersent">
			<p>
				<xsl:for-each select="taggertoken">
				<xsl:choose>
					<xsl:when test="contains(@pos, 'DET')">
						<xsl:if test="contains(@pos, 'fem')">
							<span style="color: red;"><xsl:value-of select="concat(@wordform, ' ')" /></span>
						</xsl:if>
						<xsl:if test="contains(@pos, 'masc')">
							<span style="color: blue;"><xsl:value-of select="concat(@wordform, ' ')" /></span>
						</xsl:if>
					</xsl:when>
					<xsl:otherwise>
						<span style="color: black;"><xsl:value-of select="concat(@wordform, ' ')" /></span>
					</xsl:otherwise>
				</xsl:choose>
				</xsl:for-each>
			</p>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>