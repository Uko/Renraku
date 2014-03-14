as yet unclassified
testReportsNotPersistedOnRecompilation
	| source |
	source := compiledLongMethod sourceCode.
	
	MethodLengthRule validate: compiledLongMethod.
	self assert: compiledLongMethod reports notEmpty.
	
	REMessTestResource compile: source, '.^ 1'.
	
	self assert: (REMessTestResource methodNamed: #longMethod) reports isEmpty.
	
	REMessTestResource compile: source