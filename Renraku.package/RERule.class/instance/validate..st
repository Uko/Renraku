as yet unclassified
validate: aTarget
	^ REReport
		newWith: self message
		for: aTarget
		graded: (self rate: aTarget)