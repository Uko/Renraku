tests
testClassUpdate

	| report model |	

	model := ReModel new
		environment: testClass asEnvironment;
		lintRule: RBNoClassCommentRule new;
		yourself.

	report := model reports detect: [ :rep | rep entity = testClass ].
	
	
		
	self assert: report isNegative.
	
	testClass comment: 'Now I have a comment'.
	
	self assert: report isPositive.