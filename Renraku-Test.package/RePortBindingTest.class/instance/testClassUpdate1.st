as yet unclassified
testClassUpdate1

	| report |	
		
	testClass superclass
		subclass: testClass name
		instanceVariableNames: 'unused'
		classVariableNames: ''
		category: testClass category.

	report := RePort
		rule: (ReRule new: RBOnlyReadOrWrittenVariableRule new)
		entity: (ReClass newFrom: testClass).
		
	self assert: report isNegative.
	
	testClass superclass
		subclass: testClass name
		instanceVariableNames: ''
		classVariableNames: ''
		category: testClass category.
	
	self assert: report isPositive.