setup:
	wget http://smpdb.ca/downloads/smpdb_pathways.csv.zip
	wget http://smpdb.ca/downloads/smpdb_metabolites.csv.zip
	wget http://smpdb.ca/downloads/smpdb_proteins.csv.zip

	unzip smpdb_pathways.csv.zip
	unzip smpdb_metabolites.csv.zip -d metabolites
	unzip smpdb_proteins.csv.zip -d proteins

	sh concat_metabolites.sh
	sh concat_proteins.sh

	rm -rf proteins
	rm -rf metabolites
	
	rm -rf smpdb_pathways.csv.zip
	rm -rf smpdb_metabolites.csv.zip
	rm -rf smpdb_proteins.csv.zip