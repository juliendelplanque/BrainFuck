transpiling
transpileToC
	| transpiler |
	transpiler := BFCTranspiler new.
	self accept: transpiler.
	^ transpiler