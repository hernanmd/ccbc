Class {
	#name : #BaselineOfCCBC,
	#superclass : #BaselineOf,
	#category : #BaselineOfCCBC
}

{ #category : #baseline }
BaselineOfCCBC >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec 
				baseline: 'Roassal2' 
				with: [ spec repository: 'github://ObjectProfile/Roassal2/src' ].
			
			spec package: 'CCBC' with: [ spec requires: 'Roassal2' ].
	
			spec group: 'Core' with: #('CCBC').
			spec group: 'default' with: #('Core') ]

]
