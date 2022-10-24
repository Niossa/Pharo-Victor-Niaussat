Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

{ #category : #accessing }
EVariable class >> id: anId [
^ self new id: anId; yourself
]

{ #category : #visiting }
EVariable >> accept: aVisitor [
^aVisitor visitVariable:self.
]

{ #category : #'as yet unclassified' }
EVariable >> evaluateWith: aBindingDictionary [
^ aBindingDictionary at: id
]

{ #category : #accessing }
EVariable >> id [
^id
]

{ #category : #accessing }
EVariable >> id: anId [
id := anId
]

{ #category : #accessing }
EVariable >> printOn: aStream [
aStream nexPutAll: id asString
]
