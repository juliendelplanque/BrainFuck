visiting
visitBFProgram: aBFProgram
	output
		<< '#include <stdio.h>';
		<< Smalltalk os lineEnding;
		<< 'int main(){';
		<< 'char array[';
		<< self tapeSize asString;
		<< '] = {0};';
		<< 'char *ptr=array;'.
	aBFProgram instructions do: [ :inst | inst accept: self ].
	output << $}