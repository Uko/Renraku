initialization
initializeWidgets

	packagesList := self instantiate: REEditableListUI.
	self initializePackagesList.
	
	rulesList := self instantiate: REEditableListUI.
	self initializeRulesList