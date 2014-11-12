accessing
actions
	
	^ Pragma 
		allNamed: #fix:
		from: rule lintRule class
		to: RBLintRule