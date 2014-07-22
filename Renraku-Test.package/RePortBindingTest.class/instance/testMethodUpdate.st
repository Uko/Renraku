tests
testMethodUpdate

	| report |	

	report := RePort
		rule: (ReRule new: RBUnclassifiedMethodsRule new)
		entity: (ReMethod newFrom: testMethod).
		
	self assert: report isNegative.
	
	testMethod protocol: 'some protocol'.
	
	self assert: report isPositive.