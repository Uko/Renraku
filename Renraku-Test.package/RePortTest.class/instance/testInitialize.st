as yet unclassified
testInitialize

	| report rule entity |
	
	report := RePort
		rule: (rule := ReRule new: RBExcessiveArgumentsRule new)
		entity: (entity := ReClass newFrom: HandMorph).
		
	self
		assert: report rule
		equals: rule.
		
	self
		assert: report entity
		equals: entity