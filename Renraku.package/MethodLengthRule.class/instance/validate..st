as yet unclassified
validate: aMethod

	^ REReport
		newFor: self
		about: aMethod
		graded: aMethod linesOfCode * 2