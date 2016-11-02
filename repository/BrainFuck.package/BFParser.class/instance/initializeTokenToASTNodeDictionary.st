initialization
initializeTokenToASTNodeDictionary
	tokenToASTNodeDictionary := { 
		self incrementDPToken -> [ :t | BFIncrementDataPointer new ].
		self decrementDPToken -> [ :t | BFDecrementDataPointer new ].
		self incrementByteAtDPToken -> [ :t | BFIncrementByteAtDataPointer new ].
		self decrementByteAtDPToken -> [ :t | BFDecrementByteAtDataPointer new ].
		self inputByteAtDPToken -> [ :t | BFInputByteAtDataPointer new ].
		self outputByteAtDPToken -> [ :t | BFOutputByteAtDataPointer new ]".
		self moveForwardOrJumpForwardIPToken -> [ :t | BFMoveForwardOrJumpForwardInstructionPointer new ].
		self moveForwardOrJumpBackIPToken -> [ :t | BFMoveForwardOrJumpBackInstructionPointer new ]" } asDictionary