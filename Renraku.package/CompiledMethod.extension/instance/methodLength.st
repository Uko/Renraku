*Renraku-Validation
methodLength
<renrakuValidation>

	^ REReport
		newWith: 'Number of lines'
		for: self
		graded: self linesOfCode * 2