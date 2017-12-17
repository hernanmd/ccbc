baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				project: 'Roassal2'
				with: [ spec
						className: #ConfigurationOfRoassal2;
						versionString: #development;
						loads: #(Roassal2 Roassal2Spec Roassal2GT);
						repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ].
			
			spec package: 'CCBC-Core' with: [ spec requires: 'Roassal2' ].
	
			spec group: 'Core' with: #('CCBC').
			spec group: 'default' with: #('Core') ]
