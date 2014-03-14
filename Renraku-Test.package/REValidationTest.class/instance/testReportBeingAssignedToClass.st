as yet unclassified
testReportBeingAssignedToClass
	self assert: compiledLongMethod reports isEmpty.
	
	self
		assert: (MethodLengthRule validate: compiledLongMethod)
		equals: (compiledLongMethod reports anyOne)