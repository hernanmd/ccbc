Extension { #name : #ReRefactoringCritique }

{ #category : #'*CCBC' }
ReRefactoringCritique >> sourceEntity [
	" Answer a <String> with receiver's source entity "

	^ String streamContents: [ : stream |
		stream
			nextPutAll: self refactoring class asString;
			nextPutAll: '||';
			nextPutAll: self refactoring variableName asString ]
]
