tests
testLesserThanShouldNotBeLesserThanZero
	memory codeStream: (ReadStream on: #(<)).
	self should: [ interpreter interpret ] raise: MemoryUnderflow.