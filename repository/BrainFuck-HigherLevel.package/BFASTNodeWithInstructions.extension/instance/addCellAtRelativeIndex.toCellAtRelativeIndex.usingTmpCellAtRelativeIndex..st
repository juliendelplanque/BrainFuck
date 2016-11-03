*BrainFuck-HigherLevel
addCellAtRelativeIndex: x toCellAtRelativeIndex: y usingTmpCellAtRelativeIndex: tmp
	"x = x + y"
	self
		goToCellAtRelativeIndex: tmp andDo: [ :prog | prog currentCellToZero ];
		goToCellAtRelativeIndex: y andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: y negated;
					goToCellAtRelativeIndex: x andDo: [ :subprog |
						subprog incrementByteAtDataPointer ];
					goToCellAtRelativeIndex: tmp andDo: [ :subprog |
						subprog incrementByteAtDataPointer ];
					goToCellAtRelativeIndex: y andDo: [ :subprog |
						subprog decrementByteAtDataPointer ];
					goToCellAtRelativeIndex: y ] ];
		goToCellAtRelativeIndex: tmp andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: tmp negated;
					goToCellAtRelativeIndex: y andDo: [ :subprog |
						subprog incrementByteAtDataPointer ];
					goToCellAtRelativeIndex: tmp andDo: [ :subprog |
						subprog decrementByteAtDataPointer ];
					goToCellAtRelativeIndex: tmp ] ]