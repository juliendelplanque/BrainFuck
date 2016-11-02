visiting
visitBFDecrementByteAtDataPointer: aBFDecrementByteAtDataPointer
	| newValue |
	newValue := self currentCellValue - 1.
	(newValue = -1)
		ifTrue: [ newValue := 255 ].
	self replaceCurrentCellValueBy: newValue