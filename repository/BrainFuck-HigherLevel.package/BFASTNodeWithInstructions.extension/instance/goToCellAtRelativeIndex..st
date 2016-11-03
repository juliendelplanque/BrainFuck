*BrainFuck-HigherLevel
goToCellAtRelativeIndex: relative
	"Go to tape's cell at relative index 'relative'."
	relative = 0 ifTrue: [ ^ self ].
	relative > 0
		ifTrue: [ 
			relative timesRepeat: [ self incrementDataPointer ] ]
		ifFalse: [ 
			relative negated timesRepeat: [ self decrementDataPointer ] ]