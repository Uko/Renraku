actions
actions 

	^ { 
		RePropertyAction new
			icon: (Smalltalk ui icons iconNamed: #smallQuestionIcon);
			description: 'View rationale behind the rule';
			action: [ :crit | crit popDescriptionUp ];
			yourself .
		RePropertyAction new
			icon: (Smalltalk ui icons iconNamed: #smallCancelIcon);
			description: 'Ban this rule';
			action: [ :crit | crit guidedSkip ];
			yourself	
	 }
