opcode
close
	| opening |
	opening := bracketStack pop.
	memory currentByte = 0 
		ifFalse: [ memory jumpTo: opening ]