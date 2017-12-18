examples
example07
	
	self new
		packageNames: #('Spec-Core' 'Spec-Layout' 'Spec-PolyWidgets');
		legendText: 'Spec Method Critiques' , self platformVersion;
		barColor: Color blue;
		barWidth: 20;
		collectPackageMethodCritiques;
		buildView;
		exportView