visiting
visitBFMoveForwardOrJumpInstructionPointer: aBFMoveForwardOrJumpInstructionPointer
	output
		<< 'while(*ptr){'.
	aBFMoveForwardOrJumpInstructionPointer instructions
		do: [ :inst | inst accept: self ].
	output << '}'