<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/trAnnot">
<link rel="stylesheet" type="text/css" href="exercice11a.css" />
	<html xmlns="http://www.w3.org/1999/xhtml">
		<body>
			<table>
				<xsl:for-each select="linkList">
					<xsl:if test="@level='chunk'">
						<xsl:for-each select="linkGroup">
							<xsl:for-each select="link">
								<tr>
									<td> <xsl:value-of select="docSpan[1]" /> </td>
									<td> <xsl:value-of select="docSpan[2]" /> </td>
								</tr>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:if>
				</xsl:for-each>
			</table>
		</body>
	</html>

</xsl:template>

</xsl:stylesheet>