Extension { #name : #ReProperty }

{ #category : #'*CCBC' }
ReProperty >> sourceEntity [
	" Answer a <String> with receiver's source entity "

	| answer |
	
	^ (answer := self sourceAnchor sourceEntity) isCompiledMethod
		ifTrue: [ answer name ]
		ifFalse: [ answer asString ]
]
