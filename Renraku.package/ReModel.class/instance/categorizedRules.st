accessing
categorizedRules

	^ (rules groupedBy: #category) associations collect: [ :assoc |
		ReRuleGroup new
			name: assoc key;
			rules: assoc value;
			yourself ]