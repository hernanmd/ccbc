Extension { #name : #Bag }

{ #category : #'*CCBC' }
Bag >> collectReCritiques [

	| critiques |
	
	critiques := OrderedCollection new: self size.
	contents associations doWithIndex: [ : assoc : index | 
		critiques add: (ReCritiqueAssociation new 
			id: index; 
			title: assoc key; 
			occurrences: assoc value;
			yourself) ].
	^ critiques
]
