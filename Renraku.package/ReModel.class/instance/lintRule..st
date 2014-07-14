accessing
lintRule: aCompositeLintRule

	self rules: (aCompositeLintRule leaves collect: [ :rule |
		ReRule new: rule ])