parsing
parse: aCharStream
	| parseStack |
	parseStack := Stack new.
	parseStack push: BFProgram new.
	[ aCharStream atEnd ]
		whileFalse: [ |node|
			aCharStream peek = self moveForwardOrJumpForwardIPToken
				ifTrue: [ 
					aCharStream next.
					parseStack push: BFMoveForwardOrJumpInstructionPointer new ]
				ifFalse: [ 
					aCharStream peek = self moveForwardOrJumpBackIPToken 
						ifTrue: [ |removed|
							aCharStream next.
							removed := parseStack pop.
							parseStack top addInstruction: removed ]
						ifFalse: [ 
							node := (self astNodeForToken: aCharStream next).
							node ifNotNil: [ parseStack top addInstruction: node ] ] ] ].
	parseStack size = 1
		ifFalse: [ BFParseError signal ].
	^ parseStack pop