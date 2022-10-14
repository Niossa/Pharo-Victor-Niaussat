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
	
	(self isEmpty)
	
	ifTrue: [self begin: aNode.
				self end: aNode] 
		
	ifFalse: [  end nextNode: aNode.
					aNode prevNode:  end. 
					end := aNode. ].
	 size := size + 1.
]

{ #category : #accessing }
List >> at: n [
|tempo_node |
tempo_node := begin.
	"1 to: n do: [:index| tempo_node nextNode: self nextNode ;prevNode: self prevNode;
		value: self value]."
	1 to: n do: [:index| tempo_node := tempo_node nextNode ].
	^tempo_node. 
]

{ #category : #accessing }
List >> at: n put: aValue [
|tempo_node |
tempo_node := begin.
	1 to: n do: [:index| tempo_node := tempo_node nextNode ].
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

{ #category : #accessing }
List >> removeAt: n [
|tempo_node|
	tempo_node := (self at:n).
	
	(tempo_node nextNode) prevNode: (tempo_node prevNode).
	(tempo_node prevNode) nextNode: (tempo_node nextNode).
	
size := size-1
	
	 
]

{ #category : #accessing }
List >> size [
	^size
]
