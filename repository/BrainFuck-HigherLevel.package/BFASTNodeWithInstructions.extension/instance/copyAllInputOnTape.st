*BrainFuck-HigherLevel
copyAllInputOnTape
	"Copy the input stream on the tape with a 0 before.
	After the input is copied, the current cell is the cell
	of value 0 before the actual input."
	self
		incrementDataPointer;
		inputByteAtDataPointer;
		whileCurrentCellIsNotZero: [ :sub |
			sub
				incrementDataPointer;
				inputByteAtDataPointer ];
		decrementDataPointer;
		whileCurrentCellIsNotZero: [ :sub |
			sub
				decrementDataPointer ]