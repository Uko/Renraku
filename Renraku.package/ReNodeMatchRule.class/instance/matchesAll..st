adding
matchesAll: aStringCollection

	aStringCollection do: [ :string |
		self addMatchingExpression: string ]