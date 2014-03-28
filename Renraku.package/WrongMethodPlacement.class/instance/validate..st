testing
validate: aMethod

	^ REReport
		newFor: self
		about: aMethod
		graded:
				(aMethod numArgs > 0
		and: [ aMethod hasInstVarRef not
		and: [(aMethod ast references: #self) not ] ])
				asBit * 100