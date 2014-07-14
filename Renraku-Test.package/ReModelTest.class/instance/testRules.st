as yet unclassified
testRules
	| model lintRule |
	
	model := ReModel new
		rules: { ReRule new: (lintRule := RBLongMethodsRule new) };
		yourself.
		
	self
		assert: (model rules anySatisfy: [ :rule |
			rule lintRule = lintRule ]).