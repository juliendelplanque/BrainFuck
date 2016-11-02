visiting
visitBFOutputByteAtDataPointer: aBFOutputByteAtDataPointer
	self writeTabs.
	output
		<< 'sys.stdout.write(chr(array[i]))';
		<< Smalltalk os lineEnding