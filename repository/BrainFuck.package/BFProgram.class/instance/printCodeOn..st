printing
printCodeOn: aStream
	self accept: (BFPrinter new
						output: aStream;
						yourself)