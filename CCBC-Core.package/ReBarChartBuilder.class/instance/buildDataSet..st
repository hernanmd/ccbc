private
buildDataSet: aCollection

	| ds |
	ds := RTData new.
	ds dotShape color: Color black; size: 10.
	ds interaction popup.
	ds points: aCollection.
	ds x: #id.
	ds y: #occurrences.
	ds dotShape rectangle color: Color blue.
	ds barShape 
		color: self barColor; 
		width: self barWidth.
	self view add: ds.