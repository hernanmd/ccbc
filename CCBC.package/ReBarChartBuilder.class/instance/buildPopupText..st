private
buildPopupText: ca

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'Critique: ';
			nextPutAll: ca title;
			cr;
			nextPutAll: 'Count:';
			nextPutAll: ca occurrences asString ]