private
buildAxis: aCollection

	self view axisY
		color: Color black;	
		numberOfTicks: 7;
		normalFontSize;
		noDecimal.	
	self view axisX
		color: Color black;
		normalFontSize;
		labelRotation: -30;
		numberOfTicks: aCollection size;
		numberOfLabels: aCollection size;
		labelConversion: [ : g | 
			aCollection 
				detect: [ : c | c id = g asInteger ] 
				ifFound: [ : p | p title ] 
				ifNone: [ g ] ].	