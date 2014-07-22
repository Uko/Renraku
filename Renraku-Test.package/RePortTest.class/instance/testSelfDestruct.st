tests
testSelfDestruct

	| report rule entity |
	
	report := RePort
		rule: (rule := ReRule new: RBExcessiveArgumentsRule new)
		entity: (entity := ReClass newFrom: HandMorph).
		
	report selfDestruct.
	
	self
		assert: report rule isNil;
		assert: report entity isNil.
	
	self
		deny: (rule reports includes: report);
		deny: (entity reports includes: report)