instance creation
withAllLintRules

	^ self new
		lintRule: (RBCompositeLintRule allGoodRules removeRule: RBImplementedNotSentRule new);
		yourself