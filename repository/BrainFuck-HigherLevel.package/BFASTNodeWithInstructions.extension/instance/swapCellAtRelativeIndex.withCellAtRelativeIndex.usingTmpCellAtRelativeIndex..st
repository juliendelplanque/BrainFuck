*BrainFuck-HigherLevel
swapCellAtRelativeIndex: x withCellAtRelativeIndex: y usingTmpCellAtRelativeIndex: tmp
	"swap x, y"
	self
		goToCellAtRelativeIndex: tmp andDo: #currentCellToZero;
		goToCellAtRelativeIndex: x andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: x negated;
					goToCellAtRelativeIndex: tmp andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: x;
					decrementByteAtDataPointer ] ];
		goToCellAtRelativeIndex: y andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: y negated;
					goToCellAtRelativeIndex: x andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: y;
					decrementByteAtDataPointer ] ];
		goToCellAtRelativeIndex: tmp andDo: [ :prog |
			prog whileCurrentCellIsNotZero: [ :sub |
				sub
					goToCellAtRelativeIndex: tmp negated;
					goToCellAtRelativeIndex: y andDo: #incrementByteAtDataPointer;
					goToCellAtRelativeIndex: tmp;
					decrementByteAtDataPointer ] ]