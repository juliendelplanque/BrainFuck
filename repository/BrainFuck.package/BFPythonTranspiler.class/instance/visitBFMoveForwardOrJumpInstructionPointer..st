visiting
visitBFMoveForwardOrJumpInstructionPointer: aBFMoveForwardOrJumpInstructionPointer
	self writeTabs.
	output
		<< 'while (array[i] != 0):';
		<< Smalltalk os lineEnding.
	tabCount := tabCount + 1.
	aBFMoveForwardOrJumpInstructionPointer instructions do: [ :inst | inst accept: self ].
	tabCount := tabCount - 1.