*BrainFuck-HigherLevel
copyCellAtRelativeIndex: y intoCellAtRelativeIndex: x usingTmpCellAtRelativeIndex: tmp
	"x = y"
	self
		goToCellAtRelativeIndex: tmp andDo: #currentCellToZero;
		goToCellAtRelativeIndex: x andDo: #currentCellToZero;
		goToCellAtRelativeIndex: y andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: y negated;
					goToCellAtRelativeIndex: x andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: tmp andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: y;
					decrementByteAtDataPointer ] ];
		goToCellAtRelativeIndex: tmp andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: tmp negated;
					goToCellAtRelativeIndex: y andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: tmp;
					decrementByteAtDataPointer ] ]