Class {
	#name : #EPrinterVisitorTest,
	#superclass : #TestCase,
	#category : #'Expressions-Model'
}

{ #category : #tests }
EPrinterVisitorTest >> testPrintingAddition [
|result result2|
result := EAddition fivePlusThree  accept: EPrinterVisitor new.
result2 := (EAddition fivePlusThree negated) accept: EPrinterVisitor new.
self assert: result equals: '( 5 + 3 )'.
self assert: result2 equals:  '- ( 5 + 3 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintingDivision [
|result result2|
result := EDivision  fiveOverThree  accept: EPrinterVisitor new.
result2 := (EDivision  fiveOverThree negated) accept: EPrinterVisitor new.
self assert: result equals: '( 5 / 3 )'.
self assert: result2 equals:  '- ( 5 / 3 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintingMultiplication [
|result result2|
result := EMultiplication  fiveTimesThree  accept: EPrinterVisitor new.
result2 := (EMultiplication  fiveTimesThree negated) accept: EPrinterVisitor new.
self assert: result equals: '( 5 * 3 )'.
self assert: result2 equals:  '- ( 5 * 3 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintingNegation [
|result|
result := EConstant constant5 negated accept: EPrinterVisitor new.
self assert: result  equals: '- 5'
]
