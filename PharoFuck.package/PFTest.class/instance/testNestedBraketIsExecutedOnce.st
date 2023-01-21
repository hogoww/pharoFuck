tests
testNestedBraketIsExecutedOnce
	memory codeStream: (ReadStream on: #( + [ - > + [ - > + + < < ] ])).
	interpreter interpret.
	self assert: (memory byteAt: 3) equals: 2