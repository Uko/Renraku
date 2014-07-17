instance creation
withAllLintRules

	^ self new
		lintRule: RBCompositeLintRule allGoodRules;
		yourself