as yet unclassified
testReportsNotPersistedOnRecompilation
	MethodLengthRule validate: compiledLongMethod.
	self assert: compiledLongMethod reports notEmpty.
	
	REMessTestResource compile: compiledLongMethod sourceCode, '.^ 1'.
	
	self assert: (REMessTestResource methodNamed: #longMethod) reports isEmpty
		