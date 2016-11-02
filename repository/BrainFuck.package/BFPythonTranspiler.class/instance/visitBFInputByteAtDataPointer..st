visiting
visitBFInputByteAtDataPointer: aBFInputByteAtDataPointer
	self writeTabs.
	output
		<< 'array[i] = ord(sys.stdin.read(1)[0])';
		<< Smalltalk os lineEnding