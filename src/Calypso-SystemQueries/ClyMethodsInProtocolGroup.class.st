"
I am group of methods in a specific protocol
"
Class {
	#name : #ClyMethodsInProtocolGroup,
	#superclass : #ClyMethodGroup,
	#category : #'Calypso-SystemQueries-Domain'
}

{ #category : #testing }
ClyMethodsInProtocolGroup class >> isBasedOnMethodProtocol [
	^true
]

{ #category : #testing }
ClyMethodsInProtocolGroup class >> isEditableGroup [
	^true
]

{ #category : #'instance creation' }
ClyMethodsInProtocolGroup class >> withMethodsFrom: aClassScope inProtocol: protocolName [

	^ self named: protocolName on: (ClyTaggedMethodsQuery by: protocolName from: aClassScope)
]

{ #category : #operations }
ClyMethodsInProtocolGroup >> categorizeMethodsIn: newProtocolName [

	newProtocolName = self protocol ifTrue: [ ^ self ].

	super categorizeMethodsIn: newProtocolName
]

{ #category : #operations }
ClyMethodsInProtocolGroup >> importMethod: aMethod [

	super importMethod: aMethod.

	aMethod protocol: self protocol
]

{ #category : #accessing }
ClyMethodsInProtocolGroup >> protocol [
	^ methodQuery tag
]