accessing
labelRotation
	^ labelRotation
		ifNil: [ labelRotation := self defaultLabelRotation ]