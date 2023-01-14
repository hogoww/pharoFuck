opcode
lesserThan
	memory index < 2 ifTrue: [ MemoryUnderflow signal ].
	memory index: memory index - 1