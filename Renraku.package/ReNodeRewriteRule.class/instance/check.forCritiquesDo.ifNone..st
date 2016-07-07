running
check: aNode forCritiquesDo: aCriticBlock ifNone: alternativeBlock

	| encounteredCrit |
	
	encounteredCrit := false.

	matches keysAndValuesDo: [ :matcher :rewriter |
		matcher
			match: aNode
			onSuccess: [ :map |
				(self afterCheck: aNode mappings: map) ifTrue: [
					encounteredCrit := true.
					aCriticBlock cull: (
						self critiqueFor: aNode by: rewriter withMappings: map). ] ]
			onFailure: [  ] ].
		
	encounteredCrit ifFalse: alternativeBlock