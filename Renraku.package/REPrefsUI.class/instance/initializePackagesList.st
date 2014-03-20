initialization
initializePackagesList

	packagesList labelText: 'Packages to validate'.
	packagesList displayBlock: [ :pack | pack packageName ].
	packagesList items: self prefs packages.
	packagesList allItemsSource: [ RPackageOrganizer default packages ].
	packagesList whenListChanged: [ :new | self prefs packages: new ]