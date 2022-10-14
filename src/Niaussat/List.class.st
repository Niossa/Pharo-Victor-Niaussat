Class {
	#name : #List,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end',
		'size'
	],
	#category : #Niaussat
}

{ #category : #adding }
List >> add: aValue [
	|aNode|
	aNode := Node new value: aValue.
	
	self isEmpty
	
	ifTrue: [begin := aNode.
				end :=aNode] 
		
	ifFalse: [
		
					aNode prevNode:  end. 
					end nextNode: aNode. 
					 end := aNode. ].
	 size := size + 1.
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
	super initialize.
	size := 0.
	
]

{ #category : #test }
List >> isEmpty [
	^(begin isNil)
]
