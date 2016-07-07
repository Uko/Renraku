running
basicCheck: anEntity
	
	 self
		check: anEntity
		forCritiquesDo: [ ^ true ].
		
	^ false