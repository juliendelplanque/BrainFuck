visiting
visitBFProgram: aBFProgram
	aBFProgram instructions do: [ :inst | inst accept: self ]