Class {
	#name : #EEvaluatorVisitorTest,
	#superclass : #TestCase,
	#category : #'Expressions-Test'
}

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitAdditionReturnsAdditionResult [
| expression result |
expression := EAddition
left: (EConstant value: 7)
right: (EConstant value: -2).
result := expression accept: EEvaluatorVisitor new.
self assert: result equals: 5
]

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [
self assert: ((EConstant value: 5) accept: EEvaluatorVisitor new) equals: 5
]

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitDivisionByZeroThrowsException [
| expression |
expression := EDivision
numerator: (EConstant value: 6)
denominator: (EConstant value: 0).
self
should: [expression accept: EEvaluatorVisitor new]
raise: EZeroDenominator
]

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitDivisionReturnsDivisionResult [
| expression result |
expression := EDivision
numerator: (EConstant value: 6)
denominator: (EConstant value: 3).
result := expression accept: EEvaluatorVisitor new.
self assert: result equals: 2
]

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [
| expression result |
expression := EMultiplication
left: (EConstant value: 7)
right: (EConstant value: -2).
result := expression accept: EEvaluatorVisitor new.
self assert: result equals: -14
]

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitNegationReturnsNegatedConstant [
| expression result |
expression := (EConstant value: 7) negated.
result := expression accept: EEvaluatorVisitor new.
self assert: result equals: -7
]

{ #category : #'as yet unclassified' }
EEvaluatorVisitorTest >> testVisitVariableReturnsVariableValue [
| expression result visitor |
expression := EVariable id: #answerToTheQuestion.
visitor := EEvaluatorVisitor new.
visitor at: #answerToTheQuestion put: 42.
result := expression accept: visitor.
self assert: result equals: 42
]
