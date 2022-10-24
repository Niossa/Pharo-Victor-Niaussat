Class {
	#name : #EAdditionTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EAdditionTest >> testEvaluate [

	| ep1 ep2 add |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	add := EAddition new
		       right: ep1;
		       left: ep2.
	self assert: (add evaluateWith: Dictionary new) equals: 8
]

{ #category : #tests }
EAdditionTest >> testEvaluateWithNegation [

	| ep1 ep2 |
	ep1 := ENegation new expression: (EConstant new value: 5).
	ep2 := EConstant new value: 3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: -2
]

{ #category : #tests }
EAdditionTest >> testNegated [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) negated evaluateWith: Dictionary new)
		equals: -8
]

{ #category : #tests }
EAdditionTest >> testNegated2 [

	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) negated evaluateWith: Dictionary new)
		equals: -8
]

{ #category : #tests }
EAdditionTest >> testPrinting [
self
assert: EAddition fivePlusThree printString
equals: '( 5 + 3 )'.
self
assert: EAddition fivePlusThree negated printString
equals: '- ( 5 + 3 )'
]
