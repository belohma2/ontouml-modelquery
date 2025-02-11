Trait {
	#name : 'TProfileGatherer',
	#category : 'OpenPonk-OntoUML-ModelQuery',
	#package : 'OpenPonk-OntoUML-ModelQuery'
}

{ #category : 'utilities' }
TProfileGatherer classSide >> getAssociation: aStereotype [
	^ aStereotype base_Association.
]

{ #category : 'utilities' }
TProfileGatherer classSide >> getElement: aStereotype [
	^ aStereotype base_Class.
]

{ #category : 'utilities' }
TProfileGatherer classSide >> getStereotype: aElement [
	| stereotypes |
	stereotypes := aElement appliedStereotypes select: [ :stereotype | stereotype isKindOf: OntoUMLElement ].
	stereotypes isEmpty ifTrue: [ ^ nil ] ifFalse: [ ^ stereotypes at: 1 ].
]

{ #category : 'utilities' }
TProfileGatherer classSide >> getStereotypeClass: aElement [
	| stereotype |
	stereotype := self getStereotype: aElement.
	stereotype ifNil: [ ^ nil. ] ifNotNil: [ ^ stereotype class. ].
]
