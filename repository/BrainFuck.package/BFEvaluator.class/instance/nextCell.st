helpers
nextCell
	dataPointer = data size
		ifTrue: [ BFDataPointerOutOfBounds signal ].
	dataPointer := dataPointer + 1