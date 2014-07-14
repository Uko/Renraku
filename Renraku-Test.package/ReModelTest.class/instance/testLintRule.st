as yet unclassified
testLintRule
	| model |
	
	model := ReModel new
		lintRule: RBCompositeLintRule allGoodRules;
		yourself.
		
	RBCompositeLintRule allGoodRules leaves do: [ :lintRule |
		self assert: (model rules anySatisfy: [ :rule | 
			rule lintRule class = lintRule class ]) ]