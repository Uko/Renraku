initialization
initializeWidgets

	packagesList := self instantiate: REEditableListUI.
	packagesList labelText: 'Packages to validate'.
	packagesList displayBlock: [ :pack | pack packageName ].
	packagesList items: self prefs packages.
	packagesList allItemsSource: [ PackageOrganizer default packages ].
	packagesList whenListChanged: [ :new | self prefs packages: new ].
	
	rulesList := self instantiate: REEditableListUI.
	rulesList labelText: 'Validation rules'.
	rulesList items: self prefs rules.
	rulesList allItemsSource: [ RERule subclasses ].
	rulesList whenListChanged: [ :new | self prefs rules: new ]