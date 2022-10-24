Class {
	#name : #EExpression,
	#superclass : #Object,
	#instVars : [
		'bindings',
		'value'
	],
	#category : #Expressions
}

{ #category : #visiting }
EExpression >> accept: aVisitor [
self subclassResponsibility 
]

{ #category : #accessing }
EExpression >> bindings: aDictionary [
bindings := aDictionary
]

{ #category : #accessing }
EExpression >> evaluateWith: anEnvironment [
| visitor |
visitor := EEvaluatorVisitor new.
visitor bindings: anEnvironment.
^ self accept: visitor.
]

{ #category : #arithmetic }
EExpression >> negated [
^ ENegation new expression: self
]
