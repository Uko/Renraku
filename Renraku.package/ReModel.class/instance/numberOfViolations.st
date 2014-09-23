as yet unclassified
numberOfViolations

	^ self entities inject: 0 into: [ :subtotal :entity |
		subtotal + entity numberOfViolations ]