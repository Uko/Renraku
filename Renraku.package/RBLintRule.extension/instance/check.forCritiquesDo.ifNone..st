*renraku
check: anEntity forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	| encounteredCritique |
	
	encounteredCritique := false.

	self check: anEntity forCriticsDo: [ :crit |
		encounteredCritique := true.
		aCriticBlock cull: crit ].
	
	encounteredCritique ifFalse: alternativeBlock