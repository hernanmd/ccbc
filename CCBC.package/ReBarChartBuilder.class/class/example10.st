examples
example10
	
	self new
		packageNames: (self packageNamesBeginWith: 'GT');
		legendText: 'GT Method Critiques', self platformVersion;
		barColor: Color blue;
		barWidth: 10;
		collectPackageMethodCritiques;
		buildView;
		exportView