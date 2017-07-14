running
critiquesOf: anEntity
	| rules critiques manifest builder |
	
	builder := TheManifestBuilder new.
	manifest := builder manifestOf: anEntity.
		
	rules := anEntity suitableRulesFrom: (ReRuleManager managerFor: anEntity).
	critiques := Set new.
	rules
		reject: [ :rule |
			manifest isNotNil and:
			[ anEntity banChecksForValidation
				anySatisfy: [ :banLevel |
					builder bansRule: rule for: banLevel ] ] ]
		thenDo: [ :rule |
			[ rule resetResult.
			  rule
				  check: anEntity
				  forCritiquesDo: [ :critic |
					  critiques add: critic ]
			] on: Error
			  do: [ :er | ReSettings showErrors ifTrue: [ er pass ] ].
			Processor yield ].
	
	ReSystemAnnouncer uniqueInstance notifyEntity: anEntity criticizedWith: critiques.
	
	^ critiques