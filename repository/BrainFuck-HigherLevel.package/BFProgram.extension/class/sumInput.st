*BrainFuck-HigherLevel
sumInput
	^ BFProgram new
		copyAllInputOnTape;
		incrementDataPointer;
		incrementDataPointer;
		whileCurrentCellIsNotZero: [ :prog |
			prog
				addCellAtRelativeIndex: 0 toCellAtRelativeIndex: -1 usingTmpCellAtRelativeIndex: -2;
				incrementDataPointer ];
		decrementDataPointer;
		outputByteAtDataPointer;
		yourself