private
buildAxis: aCollection

	self view axisY
		color: Color black;	
		numberOfTicks: self numberOfTicks;
		normalFontSize;
		noDecimal.	
	self view axisX
		color: Color black;
		normalFontSize;
		labelRotation: self labelRotation;
		numberOfTicks: aCollection size;
		numberOfLabels: aCollection size;
		labelConversion: [ : g | 
			aCollection 
				detect: [ : c | c id = g asInteger ] 
				ifFound: [ : p | p title ] 
				ifNone: [ g ] ].	