accessing
autoActions
	
	^ Pragma 
		allNamed: #autoFix:
		from: rule lintRule class
		to: RBLintRule