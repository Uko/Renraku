tests
testMethodUpdate

	| report model |	

	model := ReModel new
		environment: testMethod methodClass asEnvironment;
		lintRule: RBUnclassifiedMethodsRule new;
		yourself.
		
	self
		assert: testMethod reports size
		equals: 1.
		
	report := testMethod reports anyOne.
		
	self assert: report isNegative.
	
	testMethod protocol: 'some protocol'.
	
	self assert: report isPositive.