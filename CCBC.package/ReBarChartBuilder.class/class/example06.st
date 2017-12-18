examples
example06
	
	self new
		packageNames: #('Iceberg' 'Iceberg-Libgit' 'Iceberg-Libgit-Filetree' 'Iceberg-Libgit-Tonel');
		legendText: 'Iceberg Class Critiques' , self platformVersion;
		barColor: Color gray;
		barWidth: 70;
		collectPackageClassCritiques;
		buildView;
		exportView