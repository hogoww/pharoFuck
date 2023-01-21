opcode
open
	bracketStack push: memory currentOpCodeIndex - 1.
	memory currentByte = 0
		ifTrue: [ memory jumpToClosingBracket ]