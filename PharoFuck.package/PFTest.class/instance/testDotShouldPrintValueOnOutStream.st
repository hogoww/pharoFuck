tests
testDotShouldPrintValueOnOutStream
	memory codeStream: (ReadStream on: #(.)).
	interpreter interpret.
	self assert: interpreter outStream contents size equals: 1.
	self assert: interpreter outStream contents anyOne equals: Character null.