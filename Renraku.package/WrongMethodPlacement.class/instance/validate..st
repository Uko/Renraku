as yet unclassified
validate: aMethod

	^ REReport
		newFor: self
		about: aMethod
		graded:
			(aMethod hasInstVarRef or:
			[aMethod ast references: #self]) not
				asBit * 100