visiting
visitBFDecrementByteAtDataPointer: aBFDecrementByteAtDataPointer
	self writeTabs.
	output
		<< 'array[i] -= 1';
		<< Smalltalk os lineEnding