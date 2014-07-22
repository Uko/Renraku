tests
testValidate
	| rule entity report |
	rule := ReRule new: RBExcessiveArgumentsRule new.
	entity := ReClass newFrom: self class. 
	
	report := rule validate: entity.
	
	self assert: (rule reports includes: report)