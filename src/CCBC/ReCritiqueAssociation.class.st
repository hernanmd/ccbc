"
Helper class for collecting critiques and number of occurrences.

Internal Representation and Key Implementation Points.

    Instance Variables
	id:				<Number>
	occurrences:		<Number>
	title:			<String>

"
Class {
	#name : #ReCritiqueAssociation,
	#superclass : #Object,
	#instVars : [
		'id',
		'title',
		'occurrences'
	],
	#category : #'CCBC-Core'
}

{ #category : #accessing }
ReCritiqueAssociation >> id [
	^ id
]

{ #category : #accessing }
ReCritiqueAssociation >> id: anObject [
	id := anObject
]

{ #category : #accessing }
ReCritiqueAssociation >> occurrences [
	^ occurrences
]

{ #category : #accessing }
ReCritiqueAssociation >> occurrences: anObject [
	occurrences := anObject
]

{ #category : #accessing }
ReCritiqueAssociation >> title [
	^ title
]

{ #category : #accessing }
ReCritiqueAssociation >> title: anObject [
	title := anObject
]
