as yet unclassified
methodReportsFor: aCompiledMethod

	^ methodReports
		at: aCompiledMethod
		ifAbsentPut: nil

	