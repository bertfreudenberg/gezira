generated
kernelCompositeExclusion: argOops size: argCount
	"Automatically generated (see generatePluginKernels)"
	| result |
	self returnTypeC: 'void'.
	self var: #argOops type: 'sqInt*'.
	self var: #result type: 'nile_Process_t*'.
	argCount ~= 0
		ifTrue: [^self fail: 'wrong argument count in CompositeExclusion'].
	result := self cCode: 'gezira_CompositeExclusion(init)'.
	self pushKernel: result.
