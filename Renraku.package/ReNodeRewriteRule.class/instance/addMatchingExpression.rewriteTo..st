adding
addMatchingExpression: aString rewriteTo: aRewriteString

	matches
		at: (RBParser parseRewriteExpression: aString)
		put: (ReRewriteTreeWrapper on: (
			RBParser parseRewriteExpression: aRewriteString))