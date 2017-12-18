private
buildLegend

	| lb |
	
	lb := RTLegendBuilder new.
	lb view: self view view.
	lb 	textSize: self legendTextSize;
		offset: 290;
		below;
		addColoredText: self legendText color: Color black;		
		build.	
