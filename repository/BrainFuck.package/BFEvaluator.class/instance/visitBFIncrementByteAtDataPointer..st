visiting
visitBFIncrementByteAtDataPointer: aBFIncrementByteAtDataPointer
	| newValue |
	newValue := self currentCellValue + 1.
	(newValue = 256)
		ifTrue: [ newValue := 0 ].
	self replaceCurrentCellValueBy: newValue