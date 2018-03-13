<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
<html>
	<body>
		<xsl:apply-templates select="TEI/text/group/text/body/lg/lg"/>
	</body>
</html>

</xsl:template>

<xsl:template match="lg">
	<xsl:for-each select="l">
		<xsl:value-of select="position()"/>) <xsl:value-of select="."/><br/>
	</xsl:for-each>
	<br/>
</xsl:template>
 
</xsl:stylesheet>