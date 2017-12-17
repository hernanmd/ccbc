examples
example04

	(RPackage organizer packageNames first: 4) do: [ : pkg |
		self new 
			packageName: pkg asString;
			legendText: pkg asString;
			barWidth: 30;
			collectMethodCritiques;
			buildView ]