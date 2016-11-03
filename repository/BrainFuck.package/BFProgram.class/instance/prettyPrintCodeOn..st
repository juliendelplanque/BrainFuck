printing
prettyPrintCodeOn: aStream
	self accept: (BFPrettyPrinter new
						output: aStream;
						yourself)