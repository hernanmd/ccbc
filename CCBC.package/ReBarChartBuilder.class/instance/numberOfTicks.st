accessing
numberOfTicks
	^ numberOfTicks
		ifNil: [ numberOfTicks := self defaultNumberOfTicks ]