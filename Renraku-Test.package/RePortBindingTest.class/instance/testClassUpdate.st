as yet unclassified
testClassUpdate

	| report |	

	report := RePort
		rule: (ReRule new: RBNoClassCommentRule new)
		entity: (ReClass newFrom: testClass).
		
	self assert: report isNegative.
	
	testClass comment: 'Now I have a comment'.
	
	self assert: report isPositive.