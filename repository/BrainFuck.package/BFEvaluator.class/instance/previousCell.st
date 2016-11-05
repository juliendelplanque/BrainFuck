helpers
previousCell
	dataPointer = 1
		ifTrue: [ BFDataPointerOutOfBounds signal ].
	dataPointer := dataPointer - 1