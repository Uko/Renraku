testing
validate: aMethod

	^ REReport
		newFor: self
		about: aMethod
		graded: aMethod linesOfCode * 2