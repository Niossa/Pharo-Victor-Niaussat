Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Expressions-Model'
}

{ #category : #visiting }
EEvaluatorVisitor >> at: anId put: aValue [
bindings at: anId put: aValue
]

{ #category : #accessing }
EEvaluatorVisitor >> bindings: aDictionary [
bindings := aDictionary

]

{ #category : #comparing }
EEvaluatorVisitor >> initialize [
super initialize.
bindings := Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anEAddition [
^((anEAddition right accept: self) + (anEAddition left accept: self))

]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
^ aConstant value
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: aDivision [

((aDivision denominator accept:self )isZero )

ifTrue:[ EZeroDenominator signal: 'Division by zero' ]
ifFalse: [^(aDivision numerator accept:self )/ (aDivision denominator accept:self)]

]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [ 
^((anEMultiplication right accept: self) * (anEMultiplication left accept: self))

]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: aConstant [
^ (aConstant expression accept: self) negated
]

{ #category : #visiting }
EEvaluatorVisitor >> visitVariable: aVariable [
^ aVariable evaluateWith: bindings.
]
