private
buildLegend

	| lb |
	
	lb := RTLegendBuilder new.
	lb view: self view view.
	lb 	textSize: 32;
		offset: 290;
		below;
		addColoredText: self legendText color: Color black;		
		build.	
