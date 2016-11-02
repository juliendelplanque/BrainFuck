examples
helloWorld
	"Returns the AST of a BrainFuck program printing 'Hello World!' on the output stream."
	^ BFParser new
		parseString: '>++++++++[-<+++++++++>]<.>>+>-[+]++>++>+++[>[->+++<<+++>]<<]>-----.>->+++..+++.>-.<<+[>[+>+]>>]<--------------.>>.+++.------.--------.>+.>+.'