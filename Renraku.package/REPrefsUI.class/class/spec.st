as yet unclassified
spec
	<spec:#default>
	
	^SpecLayout composed
		newColumn: [ :aCol |
			aCol
				newColumn: [ :aCol2 |
					aCol2
						add: #packagesLabel height: 20;
						add: #packagesList;
						newRow: [ :row |
							row
								add: #addPackagesButton;
								add: #removePackagesButton ] height: 30 ];
				addSplitter;
				
				newColumn: [ :aCol2 |
					aCol2
						add: #rulesLabel height: 20;
						add: #rulesList;
						newRow: [ :row |
							row
								add: #addRulesButton;
								add: #removeRulesButton ] height: 30 ] ]
		yourself