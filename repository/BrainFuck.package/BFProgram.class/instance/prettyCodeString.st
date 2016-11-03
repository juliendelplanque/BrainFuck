printing
prettyCodeString
	| stream |
	stream := WriteStream on: String new.
	self prettyPrintCodeOn: stream.
	^ stream contents