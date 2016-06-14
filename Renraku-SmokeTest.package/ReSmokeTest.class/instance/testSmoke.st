private
testSmoke

	| errors |
	
	errors := OrderedCollection new.

	SystemNavigation new allObjects do: [ :el | 
		FileStream stdout nextPut: $.. 
		[ el externalProperties ]
			on: Error
			do: [ :er |
				errors add: {
					el .
					er .
					(er signalerContext findContextSuchThat: [ :context |
						context receiver isKindOf: RBLintRule ]
					) receiver class
				} ] ]
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