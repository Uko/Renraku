private
testSmoke

	| errors |
	
	errors := OrderedCollection new.

	SystemNavigation new allObjects do: [ :el | 
		[ el externalProperties.
		  FileStream stdout nextPut: $..
		]  on: Error
			do: [ :er |
				FileStream stdout nextPut: $X.
				errors add: {
					el .
					er .
					(er signalerContext findContextSuchThat: [ :context |
						context receiver isKindOf: RBLintRule ]
					) receiver class
				} ].
			FileStream stdout flush ]
		displayingProgress: 'Checking objects'.
		
	'errors.properties' asFileReference
		ensureDelete;
		writeStreamDo: [ :str |
			str << 'YVALUE=' << errors size ].
		
	self
		assert: errors isEmpty
		description: [
			String streamContents: [ :s |
				s
					<< 'These objects errored:';
					cr.
				errors do: [ :e | 	
					s
						cr;
						<< (e first printStringLimitedTo: 30);
						<< ' ∫'; tab.
					e second printOn: s.
					s
						<< ' ∫'; tab;
						<< e third name ].
				s nextPutAll: '--------------------------' ] ]