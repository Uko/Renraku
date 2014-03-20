as yet unclassified
spec
	<spec:#default>
	
	^SpecLayout composed
		newRow: [ :aRow |
			aRow
				newColumn: [ :aCol |
					aCol
						add: #importantCheckBox height: 20;
						add: #list ];
				addSplitter;
				newColumn: [ :aCol |
					aCol
						newRow: [ :aRow2 |
							aRow2
								add: #rationale;
								add: #browseButton width: 55 ] height: 40;
						add: #pane ] ]