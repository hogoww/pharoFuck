initialization
initialize
	super initialize.
	"lazy initialization in case we want to reinitialize the state with this method, with a different memory size"
	memorySize ifNil: [ memorySize := 30000 ]. 
	memorySpace := ByteArray new: memorySize.
	index := 1 "one based"