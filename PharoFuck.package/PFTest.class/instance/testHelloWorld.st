tests
testHelloWorld
	memory codeStream: (ReadStream on: #(+ + + + + + + + [ > + + + + [ > + + > + + + > + + + > + < < < < - ] > + > + > - > > + [ < ] < - ] > > . > - - - . + + + + + + + . . + + + . > > . < - . < . + + + . - - - - - - . - - - - - - - - . > > + . > + + .)).
	interpreter interpret.
	self assert: (interpreter outStream contents first: 12) equals: 'Hello World!' asOrderedCollection 