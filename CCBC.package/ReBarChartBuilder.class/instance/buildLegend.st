private
buildLegend

	| lb |
	
	lb := RTLegendBuilder new.
	lb view: self builder view.
	lb addText: self legendText.
	lb build.