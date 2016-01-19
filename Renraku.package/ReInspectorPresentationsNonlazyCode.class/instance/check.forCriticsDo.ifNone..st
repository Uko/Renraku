running
check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock


	anAST pragmaNamed: #gtInspectorPresentationOrder: ifAbsent: [ ^ alternativeBlock value ].
	
	^ (anAST statements
			reject: [ :statement |
				(statement isMessage or:
			  [ statement isCascade ]) and: [ 
				 statement leftmostChainReceiver = anAST arguments first ] ]
			thenCollect: [ :statement |
				aCriticBlock cull: (ReTrivialCritic
					withAnchor: (ReIntervalSourceAnchor
						entity: anAST
						interval: statement sourceInterval)
					by: self) ])
				
			ifEmpty: alternativeBlock