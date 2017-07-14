running
nodeCritiquesOf: aMethod
	| rules critiques manifest builder |
	
	builder := TheManifestBuilder new.
	manifest := builder manifestOf: aMethod.
		
	rules := (ReRuleManager managerFor: aMethod) nodeRules.
	critiques := Set new.
	rules := rules
		reject: [ :rule |
			manifest isNotNil and:
			[ aMethod banChecksForValidation
				anySatisfy: [ :banLevel |
					builder bansRule: rule for: banLevel ] ] ].
		
		aMethod ast nodesDo: [ :node |
			rules do: [ :rule |
			[
			  rule
				  check: node
				  forCritiquesDo: [ :critique |
						critique sourceAnchor initializeEnitity: aMethod.
					  critiques add: critique ]
			] on: Error
			  do: [ :er | ReSettings showErrors ifTrue: [ er pass ] ].
			Processor yield ] ].
	
	ReSystemAnnouncer uniqueInstance notifyEntity: aMethod criticizedWith: critiques.
	
	^ critiques