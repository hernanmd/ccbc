private
buildView

	| bag |
	
	bag := self critiques asBagOfReCritiques.
	view := RTGrapher new
			extent: self extent;
			yourself.
	self buildDataSet: bag.
	self buildAxis: bag.		
	view openWithToolbarEntitled: self legendText.
