running
check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock
	
	((self  preCheck: anAST forCriticsDo: aCriticBlock) and: [ 
	  self postCheck: anAST forCriticsDo: aCriticBlock ])

		ifFalse: alternativeBlock 