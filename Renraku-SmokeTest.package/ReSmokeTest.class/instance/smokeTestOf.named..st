private
smokeTestOf: aCollection named: aString

	| errors |
	
	errors := OrderedCollection new.

	aCollection do: [ :el | 
		[ el externalProperties ]
			on: Error
			do: [ :er |
				er pass.
				errors add: {
					el .
					er .
					(er signalerContext findContextSuchThat: [ :context |
						context receiver isKindOf: RBLintRule ]
					) receiver class
				} ] ]
		displayingProgress: 'Checking ', aString.
		
	self
		assert: errors isEmpty
		description: [
			String streamContents: [ :s |
				s
					<< 'This ';
					<< aString;
					<< ' errored:';
					cr.
				errors do: [ :e | | chompedName |
					chompedName :=
						(e first name truncateWithElipsisTo: 30)
							replaceAll: Character cr
							with: Character space. 
					s
						cr;
						<< chompedName;
						<< ' ∫'; tab.
					e second printOn: s.
					s
						<< ' ∫'; tab;
						<< e third name ].
				s nextPutAll: '--------------------------' ] ]