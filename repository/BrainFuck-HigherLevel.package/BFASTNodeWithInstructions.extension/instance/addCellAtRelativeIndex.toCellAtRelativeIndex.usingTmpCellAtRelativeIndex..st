*BrainFuck-HigherLevel
addCellAtRelativeIndex: x toCellAtRelativeIndex: y usingTmpCellAtRelativeIndex: tmp
	"x = x + y"
	self
		goToCellAtRelativeIndex: tmp andDo: #currentCellToZero;
		goToCellAtRelativeIndex: y andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: y negated;
					goToCellAtRelativeIndex: x andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: tmp andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: y andDo: #decrementByteAtDataPointer;
					goToCellAtRelativeIndex: y ] ];
		goToCellAtRelativeIndex: tmp andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: tmp negated;
					goToCellAtRelativeIndex: y andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: tmp andDo: #decrementByteAtDataPointer;
					goToCellAtRelativeIndex: tmp ] ]