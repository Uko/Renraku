tests
testClassUpdate1

	| report model |	
		
	testClass superclass
		subclass: testClass name
		instanceVariableNames: 'unused'
		classVariableNames: ''
		category: testClass category.

	model := ReModel new
		environment: testClass asEnvironment;
		lintRule: RBOnlyReadOrWrittenVariableRule new;
		yourself.

	report := model reports detect: [ :rep | rep entity = testClass ].

	self assert: report isNegative.
	
	testClass superclass
		subclass: testClass name
		instanceVariableNames: ''
		classVariableNames: ''
		category: testClass category.
		
	report := model reports detect: [ :rep | rep entity = testClass ].
	
	self assert: report isPositive.