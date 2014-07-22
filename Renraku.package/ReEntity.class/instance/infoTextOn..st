properties
infoTextOn: aStream
	| allViol visViol |
	aStream nextPutAll: self name.
	
	self hasViolations ifFalse: [ ^ self ].
		
	allViol := self numberOfViolations.
	visViol := self numberOfVisibleViolations.
		
	aStream
		nextPutAll: ' | ';
		print: visViol.
		
	visViol < allViol ifTrue: [ 
		aStream
			nextPut: $/;
			print: allViol ].
	
	aStream
		space;
		nextPutAll: ('violation' asPluralBasedOn: allViol)