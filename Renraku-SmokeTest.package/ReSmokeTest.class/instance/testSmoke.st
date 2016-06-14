private
testSmoke

	| errors |
	
	errors := OrderedCollection new.

	self class
		title: 'Checking objects'
		process: SystemNavigation new allObjects
		with:  [ :el | 
		[ el externalProperties]
			on: Error
			do: [ :er |
				errors add: { el . er } ] ].
		
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
						<< e first class name;
						<< ' ∫'; tab;
						<< (e first printStringLimitedTo: 30);
						<< ' ∫'; tab.
					e second printOn: s ].
				s nextPutAll: '--------------------------' ] ]