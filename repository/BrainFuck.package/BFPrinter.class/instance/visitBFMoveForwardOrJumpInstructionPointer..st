visiting
visitBFMoveForwardOrJumpInstructionPointer: aBFMoveForwardOrJumpInstructionPointer
	output << $[.
	aBFMoveForwardOrJumpInstructionPointer instructions
		do: [ :inst | inst accept: self ].
	output << $]