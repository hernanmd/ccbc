private
exportView
	" Save receiver's view as file "

	RTPNGExporter new 
		builder: self view view;
		fileName: self view title , '.png';
		withScale;
		exportToFile. 