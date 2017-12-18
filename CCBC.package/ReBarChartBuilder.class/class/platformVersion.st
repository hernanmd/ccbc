examples
platformVersion

	^ String streamContents: [ : stream |
		stream
			space;
			nextPut: $(;
			nextPutAll: Smalltalk image version;
			nextPut: $) ]