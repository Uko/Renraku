as yet unclassified
spec
	<spec:#default>
	
	^SpecLayout composed
		newColumn: [ :aCol |
			aCol
				add: #label height: 20;
				add: #list;
				newRow: [ :row |
					row
						add: #addButton;
						add: #removeButton] height: 30 ]