tests
testPlusShouldIncrementCurrentByte
	memory codeStream: (ReadStream on: #(+)).
	interpreter interpret.
	self assert: memory currentByte equals: 1