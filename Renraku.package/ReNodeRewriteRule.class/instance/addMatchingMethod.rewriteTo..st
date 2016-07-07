adding
addMatchingMethod: aString rewriteTo: aRewriteString

	matches
		at: (RBParser parseRewriteMethod: aString)
		put: (ReRewriteTreeWrapper on: (
			RBParser parseRewriteMethod: aRewriteString))