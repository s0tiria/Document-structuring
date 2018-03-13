<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />

<xsl:template match="/">
	<html>
		<body>
			<h1>Recommandation XSLT 1.0</h1>
			<xsl:for-each select="doc/taggersent">
				<p>
					<xsl:for-each select="taggertoken">
						<span>
							<xsl:value-of select="concat(@wordform, ' ')"/>
						</span>
					</xsl:for-each>
				</p>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>