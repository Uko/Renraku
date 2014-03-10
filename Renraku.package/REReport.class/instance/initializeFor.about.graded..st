initialization
initializeFor: aRule about: aTarget graded: aSevereness
	rule := aRule.
	aTarget addReport: self.
	target := aTarget.
	severeness := aSevereness