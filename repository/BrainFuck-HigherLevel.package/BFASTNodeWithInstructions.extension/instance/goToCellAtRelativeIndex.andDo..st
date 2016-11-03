*BrainFuck-HigherLevel
goToCellAtRelativeIndex: relative andDo: aBlock
	"Go to the cell at the relative index 'relative', execute the block with self as parameter and
	 go back to the original position on the tape."
	self goToCellAtRelativeIndex: relative.
	aBlock value: self.
	self goToCellAtRelativeIndex: relative negated