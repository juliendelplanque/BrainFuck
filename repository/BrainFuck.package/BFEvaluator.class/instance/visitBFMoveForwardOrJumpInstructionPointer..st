visiting
visitBFMoveForwardOrJumpInstructionPointer: aBFMoveForwardOrJumpInstructionPointer
	[ self currentCellValue ~= 0 ]
		whileTrue: [ 
			aBFMoveForwardOrJumpInstructionPointer instructions
				do: [ :inst | inst accept: self ] ]