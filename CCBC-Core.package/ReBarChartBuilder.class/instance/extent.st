accessing
extent
	^ extent
		ifNil: [ extent := 1000 @ 400 ]