examples
example08
	
	self new
		packageNames: (self packageNamesBeginWith: 'Ring');
		legendText: 'Ring Method Critiques' , self platformVersion;
		barColor: Color blue;
		barWidth: 20;
		collectPackageMethodCritiques;
		buildView;
		exportView