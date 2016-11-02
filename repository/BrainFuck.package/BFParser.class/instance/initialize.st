initialization
initialize
	super initialize.
	self
		incrementDPToken: $>;
		decrementDPToken: $<;
		incrementByteAtDPToken: $+;
		decrementByteAtDPToken: $-;
		outputByteAtDPToken: $.;
		inputByteAtDPToken: $,;
		moveForwardOrJumpForwardIPToken: $[;
		moveForwardOrJumpBackIPToken: $];
		initializeTokenToASTNodeDictionary