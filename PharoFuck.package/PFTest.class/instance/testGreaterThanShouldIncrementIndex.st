tests
testGreaterThanShouldIncrementIndex
	memory codeStream: (ReadStream on: #(>)).
	interpreter interpret.
	self assert: memory index equals: 2