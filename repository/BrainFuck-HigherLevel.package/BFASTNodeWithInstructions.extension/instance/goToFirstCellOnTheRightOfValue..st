*BrainFuck-HigherLevel
goToFirstCellOnTheRightOfValue: anInteger
	anInteger timesRepeat: [ self decrementByteAtDataPointer ].
	self whileCurrentCellIsNotZero: [ :prog |
		anInteger timesRepeat: [ prog incrementByteAtDataPointer ].
		prog incrementDataPointer.
		anInteger timesRepeat: [ prog decrementByteAtDataPointer ] ].
	anInteger timesRepeat: [ self incrementByteAtDataPointer ].