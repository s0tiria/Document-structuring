<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="utf-8"/>

<xsl:template match="/CorpusAnnote">

<link rel="stylesheet" type="text/css" href="exercice11b.css" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<script type="text/javascript">
			function flipflop(id)
			{
				if (document.getElementById(id).style.display == "none")
						document.getElementById(id).style.display = "block";
				else	document.getElementById(id).style.display = "none";
			}

			function flipflopON(id1,id2)
			{
				if (document.getElementById(id1).style.display == "none") {
						document.getElementById(id1).style.display = "block";
						document.getElementById(id2).style.display = "none";
						}
				else	{document.getElementById(id1).style.display = "none";
						document.getElementById(id2).style.display = "block";
						}
			}
			function flipflopOFF(id1,id2)
			{
				if (document.getElementById(id1).style.display == "none") {
						document.getElementById(id1).style.display = "block";
						document.getElementById(id2).style.display = "none";
						}
				else	{document.getElementById(id1).style.display = "none";
						document.getElementById(id2).style.display = "block";
						}
			}
		</script>
	</head>
	<body>
		<table>
		<th colspan="2">Phrases alignées :</th>
		<tr>
			<td>
				<tr>
					<td style="font-weight:bold" id="on1" onclick="flipflopON('off1','on1');"><span style='background: #c6dae5; font-style: bold'>[+]</span> English</td>
				</tr>
				<section id="off1" style="display:none">
				<p onclick="flipflopOFF('on1','off1');"><span style='background: #c6dae5; font-weight: bold'>[-] English</span></p>
				<xsl:for-each select="pair">
					<tr>
						<td><xsl:value-of select="phraseEN" /> </td>
					</tr>
				</xsl:for-each>
				</section>
			</td>
			<td>
				<tr>
					<td style="font-weight:bold" id="on2" onclick="flipflopON('off2','on2');"><span style='background: #c6dae5; font-style: bold'>[+]</span> Français</td>
				</tr>
				<section id="off2" style="display:none">
				<p onclick="flipflopOFF('on2','off2');"><span style='background: #c6dae5; font-weight: bold'>[-] Français</span></p>
				<xsl:for-each select="pair">
					<tr>
						<td><xsl:value-of select="phraseFR" /> </td>
					</tr>
				</xsl:for-each>
				</section>
			</td>
		</tr>
		</table>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>