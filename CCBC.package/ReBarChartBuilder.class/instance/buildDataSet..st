private
buildDataSet: aCollection
	" Private - Configure de receiver's data set "

	| ds |
	ds := RTData new.
	ds dotShape color: Color black; size: 10.
	ds interaction popup 
			borderColor: Color black;
			textColor: Color white;
			backgroundColor: Color black;
			text: [ : ca | self buildPopupText: ca ].
	ds points: aCollection.
	ds x: #id.
	ds y: #occurrences.
	ds dotShape rectangle color: Color yellow.
	ds barShape 
		color: self barColor; 
		width: self barWidth.
	self view add: ds.