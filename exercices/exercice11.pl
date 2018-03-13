#/usr/bin/perl

# récupération des fichiers
#--------------------------
$file1 = $ARGV[0];
$file2 = $ARGV[1];
$file3 = $ARGV[2];

# ouverture des fichiers d'entrée et de sortie
#---------------------------------------------
open (FIC1, "<:encoding(utf-8)", $file1); 
open (FIC2, "<:encoding(utf-8)", $file2); 
open (FIC3, "<:encoding(utf-8)", $file3); 

open (OUT, ">:encoding(utf-8)", "exercice11-prop.xml");

# impression d'information dans le fichier xml
# - le fichier d'en-tête
# - la racine du document XML
#----------------------------------------------------------
print OUT "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n\n" ;
print OUT "<CorpusAnnote>\n\n";

my $texte1 ="";
my $texte2 ="";
my $texte3 ="";

# on sauvegarde le contenu des fichiers d'entrée dans une variable
#-----------------------------------------------------------------
while(my $ligne1 = <FIC1>)
{
	$texte1 = $texte1 . $ligne1;
}

while($texte1 =~ /([0-9]{4})\n(.+?)\n(.+?)\n(.+?)\n(.+?)\n/g)
{
	print OUT "<pair id=\"$1\">\n";
	print OUT "<phraseEN>$2</phraseEN>\n";
	print OUT "<phraseFR>$3</phraseFR>\n";
	print OUT "<annot1>$4</annot1>\n";
	print OUT "<annot2>$5</annot2>\n";
	print OUT "</pair>\n\n";
}

while(my $ligne2 = <FIC2>)
{
	$texte2 = $texte2 . $ligne2;
}

while($texte2 =~ /([0-9]{4})\n(.+?)\n(.+?)\n(.+?)\n(.+?)\n/g)
{
	print OUT "<pair id=\"$1\">\n";
	print OUT "<phraseEN>$2</phraseEN>\n";
	print OUT "<phraseFR>$3</phraseFR>\n";
	print OUT "<annot1>$4</annot1>\n";
	print OUT "<annot2>$5</annot2>\n";
	print OUT "</pair>\n\n";
}

while(my $ligne3 = <FIC3>)
{
	$texte3 = $texte3 . $ligne3;
}

while($texte3 =~ /([0-9]{4})\n(.+?)\n(.+?)\n(.+?)\n(.+?)\n/g)
{
	print OUT "<pair id=\"$1\">\n";
	print OUT "<phraseEN>$2</phraseEN>\n";
	print OUT "<phraseFR>$3</phraseFR>\n";
	print OUT "<annot1>$4</annot1>\n";
	print OUT "<annot2>$5</annot2>\n";
	print OUT "</pair>\n\n";
}

# fermeture des fichiers d'entrée
#--------------------------------
close FIC1;
close FIC2;
close FIC3;

# fermeture de la racine
#-----------------------------
print OUT "\n</CorpusAnnote>";

# fermeture du fichier de sortie
#-------------------------------
close OUT;