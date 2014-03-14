as yet unclassified
testIgnoringReport
	| report |
	
	report := MethodLengthRule validate: compiledLongMethod.
	
	compiledLongMethod ignoreReport: report.
	
	self assert: compiledLongMethod reports isEmpty.
	self assert: compiledLongMethod ignoredReports notEmpty.