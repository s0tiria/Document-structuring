<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">
<html>
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
		<xsl:for-each select="document/oeuvre">
			<span style="color: green; font-weight: bold;">
				<xsl:text>N° d'inventaire : </xsl:text>
			</span>
			<xsl:value-of select="numeroInventaire"/>
			<br/>
			<span style="color: blue; font-style: italic;">
				<xsl:text>Auteur 1 : </xsl:text>
			</span>
			<xsl:value-of select="auteur1"/>
			<br/>
			<span style="color: blue; font-style: italic;">
				<xsl:text>Auteur 2 : </xsl:text>
			</span>
			<xsl:value-of select="auteur2"/>
			<br/>
			<p align="justify" id="on{generate-id()}" onclick="flipflopON('off{generate-id()}','on{generate-id()}');"><span style='background: #c6dae5; font-style: bold'>[Voir]</span></p>
			<section id="off{generate-id()}" style="display:none">
				<p align="justify" onclick="flipflopOFF('on{generate-id()}','off{generate-id()}');"><span style='background: #c6dae5; font-style: bold'>[Masquer]</span></p>
				<blockquote>
					<i><xsl:text>Numéro d'acquisition : </xsl:text></i><xsl:value-of select="numeroAcquisition"/><br/>
					<i><xsl:text>Mode d'acquisition : </xsl:text></i><xsl:value-of select="modeAcquisition"/><br/>
					<i><xsl:text>Donateur / Vendeur : </xsl:text></i><xsl:value-of select="donateurVendeur"/><br/>
					<i><xsl:text>Date d'acuisition : </xsl:text></i><xsl:value-of select="dateAcquis"/><br/>
					<i><xsl:text>Notes d'acquisition : </xsl:text></i><xsl:value-of select="notesAcquisition"/><br/>
					<i><xsl:text>Désignation : </xsl:text></i><xsl:value-of select="designation"/><br/>
					<i><xsl:text>Désignation 2 : </xsl:text></i><xsl:value-of select="designation2"/><br/>
					<i><xsl:text>Désignation 3 : </xsl:text></i><xsl:value-of select="designation3"/><br/>
					<i><xsl:text>Type d'inscription 1 : </xsl:text></i><xsl:value-of select="inscriptionType1"/><br/>
					<i><xsl:text>Type d'inscription 2 : </xsl:text></i><xsl:value-of select="inscriptionType2"/><br/>
					<i><xsl:text>Emplacement de l'inscription : </xsl:text></i><xsl:value-of select="inscriptionEmplace"/><br/>
					<i><xsl:text>Transcription de l'inscription : </xsl:text></i><xsl:value-of select="inscriptionTranscr"/><br/>
					<i><xsl:text>Domaine : </xsl:text></i><xsl:value-of select="domaine"/><br/>
					<i><xsl:text>Matière : </xsl:text></i><xsl:value-of select="matiere"/><br/>
					<i><xsl:text>Technique : </xsl:text></i><xsl:value-of select="technique"/><br/>
					<i><xsl:text>Mesure 1 : </xsl:text></i><xsl:value-of select="mesure1"/><br/>
					<i><xsl:text>MEsure 2 : </xsl:text></i><xsl:value-of select="mesure2"/><br/>
					<i><xsl:text>Mesure 3 : </xsl:text></i><xsl:value-of select="mesure3"/><br/>
					<i><xsl:text>Datation 1 : </xsl:text></i><xsl:value-of select="datation1"/><br/>
					<i><xsl:text>Datation 2 : </xsl:text></i><xsl:value-of select="datation2"/><br/>
					<i><xsl:text>Image : </xsl:text></i><xsl:value-of select="image"/><br/>
					<i><xsl:text>Page : </xsl:text></i><xsl:value-of select="commons/image/page"/><br/>
					<i><xsl:text>URL : </xsl:text></i><xsl:value-of select="commons/image/url"/><br/>
					<i><xsl:text>Vignette : </xsl:text></i><xsl:value-of select="commons/image/thumbnail"/><br/>
				</blockquote>
			</section>
		</xsl:for-each>
	</body>
</html>

</xsl:template>

</xsl:stylesheet>