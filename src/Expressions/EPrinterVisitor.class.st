Class {
	#name : #EPrinterVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Expressions-Model'
}

{ #category : #accessing }
EPrinterVisitor >> at: anId put: aValue [
bindings at: anId put: aValue
]

{ #category : #accessing }
EPrinterVisitor >> bindings: aDictionary [
bindings := aDictionary

]

{ #category : #accessing }
EPrinterVisitor >> initialize [
super initialize.
bindings := Dictionary new
]

{ #category : #visiting }
EPrinterVisitor >> visitAddition: aAddition [
| left right |
left := aAddition left accept: self.
right := aAddition right accept: self.
^ '( ', left , ' + ', right, ' )'
]

{ #category : #visiting }
EPrinterVisitor >> visitConstant: aConstant [
^ aConstant value asString
]

{ #category : #visiting }
EPrinterVisitor >> visitDivision: aDivision [
| left right |
left := aDivision numerator  accept: self.
right := aDivision denominator  accept: self.
^ '( ', left , ' / ', right, ' )'
]

{ #category : #visiting }
EPrinterVisitor >> visitMultiplication: aMultiplication [
| left right |
left := aMultiplication left accept: self.
right := aMultiplication right accept: self.
^ '( ', left , ' * ', right, ' )'
]

{ #category : #visiting }
EPrinterVisitor >> visitNegation: aConstant [
^ '- ',(aConstant expression accept: self) 
]
