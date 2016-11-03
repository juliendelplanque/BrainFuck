printing
prettyPrintOn: aStream
	self accept: (BFPrettyPrinter new
						output: aStream;
						yourself)