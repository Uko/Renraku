*renraku
critiques
	<eProperty>
	| rules critiques  |
		
	rules := (ReRuleManager managerFor: self) packageRules.
	critiques := Set new.
	rules
		do: [ :rule |
			[ rule resetResult.
			  rule
				  check: self
				  forCritiquesDo: [ :critique |
					  critiques add: critique ]
			] on: Error
			  do: [ :er | ReSettings showErrors ifTrue: [ er pass ] ].
			Processor yield ].
	
	ReSystemAnnouncer uniqueInstance notifyEntity: self criticizedWith: critiques. .
	
	^ critiques