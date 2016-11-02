visiting
visitBFProgram: aBFProgram
	output
		<< 'import sys';
		<< Smalltalk os lineEnding;
		<< 'array = [ 0 for i in range(';
		<< self tapeSize asString;
		<< ') ]';
		<< Smalltalk os lineEnding;
		<< 'i = 0';
		<< Smalltalk os lineEnding.
	aBFProgram instructions do: [ :inst | inst accept: self ]