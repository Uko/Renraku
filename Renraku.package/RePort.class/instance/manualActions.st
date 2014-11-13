accessing
manualActions
	
	^ Pragma 
		allNamed: #manualFix:
		from: rule lintRule class
		to: RBLintRule