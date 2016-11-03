printing
codeString
	| stream |
	stream := WriteStream on: String new.
	self printCodeOn: stream.
	^ stream contents