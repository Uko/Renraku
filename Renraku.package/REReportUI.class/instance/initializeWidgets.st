as yet unclassified
initializeWidgets
	
	list := self newList.
	pane := self newText.
	rationale := self newLabel.
	importantCheckBox := self newCheckBox.
	browseButton := self newButton.
	
	importantCheckBox label: 'important'.
	importantCheckBox activationAction: [ list filteringBlock: [ :items | items select: #important ] ].
	importantCheckBox desactivationAction: [ list filteringBlock: #yourself ].
	importantCheckBox state: true.
	
	list whenSelectedItemChanged: [ :item |
		item
			ifNil: [ self clearPanes ]
			ifNotNil: [
				rationale text: item rule rationale.
				pane text: item target sourceCode ] ].
		
	browseButton
		label: 'Browse';
		action: [ list selectedItem ifNotNilDo: [ :item |
				item target browse ] ]
	