evaluating
evaluateWithInputStream: aReadStream
	| visitor |
	visitor := BFEvaluator new
					inputStream: aReadStream;
					yourself.

	self accept: visitor.

	^ visitor outputStream