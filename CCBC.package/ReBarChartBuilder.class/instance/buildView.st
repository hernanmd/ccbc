private
buildView

	| bag |
	
	(bag := self critiques asBagOfReCritiques) ifEmpty: [ ^ self ].
	view := RTGrapher new
			extent: self extent;
			withoutOrigin;
			yourself.
	self buildDataSet: bag.
	self buildAxis: bag.
	self buildLegend.
	self view title: self legendText.
	view openWithToolbarEntitled: self legendText.
