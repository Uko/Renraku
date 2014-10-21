tests
testValidate
	| rule entity report |
	rule := ReRule new: RBExcessiveArgumentsRule new.
	entity := self class. 
	
	report := rule validate: entity.
	
	self assert: (rule reports includes: report)