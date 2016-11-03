visiting
visitBFMoveForwardOrJumpInstructionPointer: aBFMoveForwardOrJumpInstructionPointer
	aBFMoveForwardOrJumpInstructionPointer instructions
		do: [ :inst | inst accept: self ]