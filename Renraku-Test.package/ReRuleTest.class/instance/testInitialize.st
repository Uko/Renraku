tests
testInitialize
	| rule lintRule |
	rule := ReRule new: (lintRule := RBExcessiveArgumentsRule new).
	
	self
		assert: rule lintRule
		equals: lintRule.
		
	self
		assert: rule reports isCollection;
		assert: rule reports isEmpty 