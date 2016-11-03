visiting
visitBFInputByteAtDataPointer: aBFInputByteAtDataPointer
	self replaceCurrentCellValueBy: (inputStream next ifNil: 0)