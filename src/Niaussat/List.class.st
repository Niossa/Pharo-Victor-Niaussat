Class {
	#name : #List,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #Niaussat
}

{ #category : #adding }
List >> add: aNode [
	 aNode prevNode: self end.
	 end nextNode: aNode.
	 self end: aNode.
]

{ #category : #accessing }
List >> at: index [
|tempo_node |
	1 to: index do: [:node| tempo_node := node nextNode ].
	^tempo_node. 
]

{ #category : #accessing }
List >> at: index put: aValue [
|tempo_node|
	1 to: index do: [:node| tempo_node := node nextNode ].
	tempo_node value: aValue.
]

{ #category : #accessing }
List >> begin [
	^begin
]

{ #category : #accessing }
List >> begin: aNode [
	begin := aNode.
]

{ #category : #accessing }
List >> end [
	^end
]

{ #category : #accessing }
List >> end: aNode [
	end := aNode.
]

{ #category : #initialization }
List >> initialize [ 
	super initialize 
	
]

{ #category : #test }
List >> isEmpty [
	|l|
	l := List new.
	
	self assert: l isEmpty.
]
