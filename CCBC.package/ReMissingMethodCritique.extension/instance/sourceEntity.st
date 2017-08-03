*CCBC
sourceEntity
	" Answer a <String> with receiver's source entity "
	
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: self sourceClass asString;
			nextPutAll: '>>';
			nextPutAll: self selector asString ]
			