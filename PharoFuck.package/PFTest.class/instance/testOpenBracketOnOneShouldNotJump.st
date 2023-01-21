tests
testOpenBracketOnOneShouldNotJump
	memory codeStream: (ReadStream on: #(+ [ + > ])).
	interpreter interpret.
	self assert: (memory byteAt: 1) equals: 2