initialization
initializeWidgets

	label := self newLabel.
	list := self newList.
	addButton := self newButton.
	removeButton := self newButton.

	list
		beMultipleSelection;
		sortingBlock: [ :prev :next |
			(list displayBlock value: prev) < (list displayBlock value: next) ].

	addButton label: '+'.
	removeButton label: '-'.
	
	addButton action: [ 
		| dialogList |
		dialogList := ListModel new.
		dialogList
			beMultipleSelection;
			displayBlock: list displayBlock;
			sortingBlock: list sortingBlock;
			items: (allItems value \ list listItems).
		 
		dialogList
			openDialogWithSpec
		 	okAction: [ list items: (list listItems, dialogList selectedItems) ];
			modalRelativeTo: self window ].
	
	removeButton action: [
		list
			items: ( list listItems \ list selectedItems);
			resetSelection ]