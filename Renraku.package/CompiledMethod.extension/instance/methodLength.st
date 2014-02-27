*Renraku-Validation
methodLength
<renrakuValidation>

	^ REReport
		newWith: 'Number of lines'
		for: self
		graded: (self sourceCode lines reject: #isEmpty) size * 2