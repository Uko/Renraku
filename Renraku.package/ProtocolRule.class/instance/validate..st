as yet unclassified
validate: aMethod

	^ REReport
		newFor: self
		about: aMethod
		graded:
			(aMethod category = #'as yet unclassified') asBit * 100