printing
printOn: aStream
	self accept: (BFPrinter new
						output: aStream;
						yourself)