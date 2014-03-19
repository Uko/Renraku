as yet unclassified
spec
	<spec:#default>
	
	^SpecLayout composed
		newRow: [ :aRow |
			aRow add: #list;
			addSplitter;
			newColumn: [ :aCol |
				aCol
					add: #rationale height: 40;
					add: #pane ] ]