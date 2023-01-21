initialization
initialize
	super initialize.
	memory := PFMemory new.
	outStream := ReadWriteStream on: (OrderedCollection new: 200).
	inStream := ReadWriteStream on: (OrderedCollection new: 200).
	bracketStack := Stack new.