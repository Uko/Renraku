as yet unclassified
testNumberOfMethodPragmas
	self
		assert: (CompiledMethod methods select: [ :method |
			method hasPragmaNamed: #renrakuValidation ]) size
		equals: 1