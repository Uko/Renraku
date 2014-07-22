validation
violatingRule: aRule
	| lintRule |
	lintRule := aRule lintRule.
	lintRule resetResult.
	
	self checkWith: lintRule.
	
	^ lintRule critics includes: mirroredEntity
	