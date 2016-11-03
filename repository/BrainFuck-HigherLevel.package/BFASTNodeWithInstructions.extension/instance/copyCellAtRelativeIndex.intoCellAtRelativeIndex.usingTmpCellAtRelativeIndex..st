*BrainFuck-HigherLevel
copyCellAtRelativeIndex: y intoCellAtRelativeIndex: x usingTmpCellAtRelativeIndex: tmp
	"x = y"
	self
		goToCellAtRelativeIndex: tmp andDo: [ :prog | prog currentCellToZero ];
		goToCellAtRelativeIndex: x andDo: [ :prog | prog currentCellToZero ];
		goToCellAtRelativeIndex: y andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: y negated;
					goToCellAtRelativeIndex: x andDo: [ :subprog |
						subprog incrementByteAtDataPointer ];
					goToCellAtRelativeIndex: tmp andDo: [ :subprog |
						subprog incrementByteAtDataPointer ];
					goToCellAtRelativeIndex: y;
					decrementByteAtDataPointer ] ];
		goToCellAtRelativeIndex: tmp andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: tmp negated;
					goToCellAtRelativeIndex: y andDo: [ :subprog |
						subprog incrementByteAtDataPointer ];
					goToCellAtRelativeIndex: tmp;
					decrementByteAtDataPointer ] ]