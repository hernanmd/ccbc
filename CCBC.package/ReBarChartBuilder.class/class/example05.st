examples
example05

	self new 
		packageNames: (self packageNamesBeginWith: 'Collections');
		legendText: 'Collections' , self platformVersion;
		barWidth: 50;
		collectPackageClassCritiques;
		buildView;
		exportView.