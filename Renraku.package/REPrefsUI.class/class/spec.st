as yet unclassified
spec
	<spec:#default>
	
	^SpecLayout composed
		newColumn: [ :aCol |
			aCol
				add: #packagesList;
				addSplitter;
				add: #rulesList ]