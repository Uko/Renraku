properties
infoTextOn: aStream

	aStream nextPutAll: self name.
	
	self hasViolations ifTrue: [
		| allViol visViol |
		allViol := self numberOfViolations.
		visViol := self numberOfVisibleViolations.
		
		aStream
			nextPutAll: ' | ';
			print: visViol.
			
		visViol < allViol ifTrue: [ 
			aStream
			nextPut: $/;
			print: allViol. ].
		
		aStream
			space;
			nextPutAll: ('violation' asPluralBasedOn: allViol)
		
		 ]