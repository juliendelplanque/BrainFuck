visiting
visitBFMoveForwardOrJumpInstructionPointer: aBFMoveForwardOrJumpInstructionPointer
	output << Smalltalk os lineEnding.
	self writeTabs.
	output
		<< $[;
		<< Smalltalk os lineEnding.
	tabCount := tabCount + 1.
	self writeTabs.
	aBFMoveForwardOrJumpInstructionPointer instructions
		do: [ :inst | inst accept: self ].
	tabCount := tabCount - 1.
	output << Smalltalk os lineEnding.
	self writeTabs.
	output
		<< $];
		<< Smalltalk os lineEnding.