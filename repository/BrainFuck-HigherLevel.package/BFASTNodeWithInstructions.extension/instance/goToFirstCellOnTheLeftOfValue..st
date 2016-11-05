*BrainFuck-HigherLevel
goToFirstCellOnTheLeftOfValue: anInteger
	anInteger timesRepeat: [ self decrementByteAtDataPointer ].
	self whileCurrentCellIsNotZero: [ :prog |
		anInteger timesRepeat: [ prog incrementByteAtDataPointer ].
		prog decrementDataPointer.
		anInteger timesRepeat: [ prog decrementByteAtDataPointer ] ].
	anInteger timesRepeat: [ self incrementByteAtDataPointer ].