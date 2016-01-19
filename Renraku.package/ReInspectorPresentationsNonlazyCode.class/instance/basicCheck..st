running
basicCheck: anAST

	anAST pragmaNamed: #gtInspectorPresentationOrder: ifPresent: [ 
		^ (anAST statements allSatisfy: [ :statement |
			 (statement isMessage or:
			[ statement isCascade ]) and: [ 
				statement leftmostChainReceiver = anAST arguments first ] ]) not ].

	^ false