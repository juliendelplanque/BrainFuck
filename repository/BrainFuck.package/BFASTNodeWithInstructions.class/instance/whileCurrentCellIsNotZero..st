instructions
whileCurrentCellIsNotZero: aBlock
	| inst |
	inst := BFMoveForwardOrJumpInstructionPointer new.
	aBlock value: inst.
	self addInstruction: inst