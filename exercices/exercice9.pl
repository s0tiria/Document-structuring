#/usr/bin/perl

# récupération du fichier à traiter (sur la ligne de commande)
#-------------------------------------------------------------
$file = $ARGV[0];

# ouverture des fichiers d'entrée et de sortie
#---------------------------------------------
open (FIC, "<:encoding(utf-8)", $file); 
open (OUT, ">:encoding(utf-8)", "exercice9-perl.xml");

# impression d'information dans le fichier xml
# - le fichier d'en-tête
# - la racine du document XML
#----------------------------------------------------------
print OUT "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n\n" ;
print OUT "<CollectionMusee>\n\n";

# on sauvegarde le contenu du fichier à traiter dans une variable
#----------------------------------------------------------------
my $fichier = <FIC>;

# fermeture du fichier à traiter
#-------------------------------
close FIC;

# pour traiter toutes les oeuvres
#-------------------------------------------------------
while ($fichier =~ m/\[(.+?)\]/g) 
{
	my $texte = $1;
	
	# normalisation des entités
	#--------------------------
	$texte =~ s/&/&amp;/g;
	$texte =~ s/\u00e9/é/g;
	$texte =~ s/\u00e8/è/g;
	$texte =~ s/\u00e0/à/g;
	$texte =~ s/\u00e2/â/g;
	$texte =~ s/\u00f4/ô/g;
	$texte =~ s/\u00ea/ê/g;
	$texte =~ s/\u00e7/ç/g;
	$texte =~ s/\u00a9/&#169;/g;
	
	my $no = 1;
	
	# pour traiter une oeuvre...
	#-------------------------------------------------------
	while ($texte =~ /\{(.+?"record_timestamp": ".+?"\})/g)
	{
		my $oeuvre = $1;

		# afin de pouvoir traiter d'abord datasetid et recordid
		#-----------------------------------------------------------------
		while ($oeuvre =~ /"datasetid": "(.+?)", "recordid": "(.+?)", "fields": \{(.+?)\}, "record_timestamp": "(.+?)"\}/g)
		{
			print OUT "<oeuvre no=\"$no\">\n";
			print OUT "\t<datasetId>$1</datasetId>\n";
			print OUT "\t<recordId>$2</recordId>\n";
			print OUT "\t<fields>\n"; 
		
			my $contenufields = $3;
			my $record_timestamp = $4;
			
			# afin de pouvoir traiter fields
			#--------------------------------
			while ($contenufields =~ m/"(.+?)": "(.+?)"/g)
			{
				print OUT "\t\t<$1>$2</$1>\n";
			}
			
			print OUT "\t</fields>\n";
			print OUT "\t<recordTimestamp>$record_timestamp</recordTimestamp>\n";	
			
			# fin de l'oeuvre 
			print OUT "</oeuvre>\n\n";
		}
		
		$no++;
	}
}

print OUT "\n</CollectionMusee>";
close OUT;