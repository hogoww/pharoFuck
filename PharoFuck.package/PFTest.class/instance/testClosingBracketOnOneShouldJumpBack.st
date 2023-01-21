tests
testClosingBracketOnOneShouldJumpBack
	memory codeStream: (ReadStream on: #(+ + [ - > + < ])).
	interpreter interpret.
	self assert: (memory byteAt: 1) equals: 0.
	self assert: (memory byteAt: 2) equals: 2.