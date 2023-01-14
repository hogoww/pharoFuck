interpreter
interpretLoop
	| opCode | 
	[ 
	opCode := self nextOpCode.
	self operands includes: opCode ] whileTrue: [ 
		opCode caseOf: { 
			[ #> ] -> [ self greaterThan ]. 
			[ #< ] -> [ self lesserThan ]. 
			[ #+ ] -> [ self plus ]. 
			[ #- ] -> [ self minus ]. 
			[ #'.' ] -> [ self dot ]. 
			[ #, ] -> [ self comma ]. 
			[ #'[' ] -> [ self open ]. 
			[ #']' ] -> [ self close ].
			}
		]