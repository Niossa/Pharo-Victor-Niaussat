Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#instVars : [
		'numerator',
		'denominator'
	],
	#category : #'Expressions-Test'
}

{ #category : #'as yet unclassified' }
EDivision class >> fiveOverThree [
<sampleInstance>
| ep1 ep2 |
ep1 := EConstant constant5.
ep2 := EConstant constant3.
^ self new numerator: ep1 ;denominator: ep2 
]

{ #category : #'instance creation' }
EDivision class >> numerator: aNumeratorExpression denominator: aDenominatorExpression [
^ self new numerator: aNumeratorExpression; denominator: aDenominatorExpression
]

{ #category : #visiting }
EDivision >> accept: aVisitor [
^ aVisitor visitDivision: self
]

{ #category : #accessing }
EDivision >> denominator [
^ denominator
]

{ #category : #accessing }
EDivision >> denominator: anObject [
denominator := anObject
]

{ #category : #accessing }
EDivision >> numerator [
^ numerator
]

{ #category : #accessing }
EDivision >> numerator: anObject [
numerator := anObject
]

{ #category : #printing }
EDivision >> operatorString [
^(' / ')
]
