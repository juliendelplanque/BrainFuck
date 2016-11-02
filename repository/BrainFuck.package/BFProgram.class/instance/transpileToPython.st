transpiling
transpileToPython
	| transpiler |
	transpiler := BFPythonTranspiler new.
	self accept: transpiler.
	^ transpiler