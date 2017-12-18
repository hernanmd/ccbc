examples
example09
	
	self new
		packageNames: (RPackageOrganizer default packageNames select: [ : pkg | pkg beginsWith: 'Regex' ]);
		legendText: 'Regex Method Critiques' , self platformVersion;
		barColor: Color blue;
		barWidth: 20;
		collectPackageMethodCritiques;
		buildView;
		exportView