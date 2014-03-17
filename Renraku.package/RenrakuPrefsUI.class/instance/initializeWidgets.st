initialization
initializeWidgets

	packagesLabel := self newLabel.
	packagesList := self newList.
	addPackagesButton := self newButton.
	removePackagesButton := self newButton.

	rulesLabel := self newLabel.
	rulesList := self newList.
	addRulesButton := self newButton.
	removeRulesButton := self newButton.

	packagesLabel label: 'Packages to validate'.
	rulesLabel label: 'Validation rules'.

	packagesList
		beMultipleSelection;
		sortingBlock: [ :prev :next |
			prev packageName < next packageName ]; 
		displayBlock: [ :pack | pack packageName ].
	packagesList items: {
		PackageOrganizer default packageNamed: 'Renraku' ifAbsent: nil .
		PackageOrganizer default packageNamed: 'Renraku-Test' ifAbsent: nil
	}.
	
	addPackagesButton label: '+'.
	removePackagesButton label: '-'.
   addRulesButton label: '+'.
	removeRulesButton label: '-'.
	
	addPackagesButton action: [ 
		| t w |
		t:= ListModel new beMultipleSelection.
		t items: (PackageOrganizer default packages \ packagesList listItems).
		
		w := t openDialogWithSpec modalRelativeTo: self window.
		w okAction: [ packagesList items: ( packagesList listItems, t selectedItems) ] ].
	
	removePackagesButton action: [
		packagesList
			items: ( packagesList listItems \ packagesList selectedItems);
			resetSelection ]