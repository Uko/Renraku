as yet unclassified
set: aValue ofMethodReportsFor: aCompiledMethod

	^ methodReports
		at: aCompiledMethod
		put: aValue