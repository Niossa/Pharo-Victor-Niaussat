Class {
	#name : #TestList,
	#superclass : #TestCase,
	#category : #Niaussat
}

{ #category : #'test_empty' }
TestList >> testListAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l := List new.
	l add: 1.
	l add: 'Bonjour'.
	l add: 'Je suis Victor'.
	self assert: (l at: 2) value equals: 'Je suis Victor'.
]

{ #category : #'test_empty' }
TestList >> testListAtPut [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l := List new.
	l add: 1.
	l add: 'Bonjour'.
	l add: 'Je suis Victor'.
	l at: 1 put: 'Au revoir'.
	self assert: (l at: 1) value equals: 'Au revoir'.
]

{ #category : #'test_empty' }
TestList >> testListLastElement [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l := List new.
	l add: 1.
	l add: 'Bonjogur'.
	self assert: l end value equals: 'Bonjogur'.
]

{ #category : #'test_empty' }
TestList >> testListSize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l := List new.
	l add: 1.
	l add: 2.
	self assert: l size equals: 2.
]

{ #category : #'test_empty' }
TestList >> testListremoveAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l := List new.
	l add: 1.
	l add: 'Bonjour'.
	l add: 'Je suis Victor'.
	l removeAt: 1.
	self assert: (l at: 0) value equals: 1.
	self assert: (l at: 1) value equals: 'Je suis Victor'.
	self assert: (l size)  equals: 2.
]

{ #category : #'test_empty' }
TestList >> testisEmpty [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| l |
	l := List new.
	self assert: l isEmpty.
]
