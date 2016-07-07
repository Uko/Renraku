adding
addMatchingExpression: aString rewriteWith: aBlock

	matches
		at: (RBParser parseRewriteExpression: aString)
		put: (ReRewriteBlockWrapper on: aBlock)