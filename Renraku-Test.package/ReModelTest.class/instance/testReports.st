tests
testReports
	| model |
	
	model := ReModel new
		lintRule: RBCompositeLintRule allGoodRules;
		environment: self class package asEnvironment;
		yourself.
		
	RBCompositeLintRule allGoodRules leaves do: [ :lintRule |
		model classes, model methods do: [ :entity |
			self assert: (model reports anySatisfy: [ :report | 
				report rule lintRule class = lintRule class and: [
				report entity = entity ] ]) ] ]