initialization
initialize

	rules := RBCompositeLintRule allGoodRules
		removeRule: RBImplementedNotSentRule new;
		leaves.