<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
<html>
	<body>
		<p>Titre : <xsl:value-of select="TEI/text/group/text/front/head"/></p>
		<p>Date : <xsl:value-of select="TEI/text/group/text/front/dateline"/></p>
		<p>Recueil : <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></p>
		<p>Auteur : <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></p>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>
