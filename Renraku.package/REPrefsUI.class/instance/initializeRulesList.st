initialization
initializeRulesList

	rulesList labelText: 'Validation rules'.
	rulesList displayBlock: [ :rule | rule rationale ].
	rulesList items: self prefs rules.
	rulesList allItemsSource: [ RERule subclasses ].
	rulesList whenListChanged: [ :new | self prefs rules: new ]