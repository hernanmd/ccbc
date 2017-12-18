accessing
legendTextSize
	^ legendTextSize
		ifNil: [ legendTextSize := self defaultLegendTextSize ]