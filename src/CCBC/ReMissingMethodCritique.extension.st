Extension { #name : #ReMissingMethodCritique }

{ #category : #'*CCBC' }
ReMissingMethodCritique >> selector [
	" Answer a <Symbol> for the receiver's selector name "

	^ selector
]

{ #category : #'*CCBC' }
ReMissingMethodCritique >> sourceClass [

	^ class
]

{ #category : #'*CCBC' }
ReMissingMethodCritique >> sourceEntity [
	" Answer a <String> with receiver's source entity "
	
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: self sourceClass asString;
			nextPutAll: '>>';
			nextPutAll: self selector asString ]
			
]
