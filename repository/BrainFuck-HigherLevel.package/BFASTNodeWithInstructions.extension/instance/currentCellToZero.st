*BrainFuck-HigherLevel
currentCellToZero
	"Set the value of the current tape's cell to 0."
	self whileCurrentCellIsNotZero: #decrementByteAtDataPointer