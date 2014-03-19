initialization
initializePackagesList

	packagesList labelText: 'Packages to validate'.
	packagesList displayBlock: [ :pack | pack packageName ].
	packagesList items: self prefs packages.
	packagesList allItemsSource: [ PackageOrganizer default packages ].
	packagesList whenListChanged: [ :new | self prefs packages: new ]