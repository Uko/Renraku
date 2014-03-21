testing
validate: aMethod

	^ REReport
		newFor: self
		about: aMethod
		graded: aMethod numArgs * 20