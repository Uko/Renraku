properties
infoText

	^ self hasViolations
		ifFalse: [ self name ]
		ifTrue: [ 
			self name,
			' | ',
			self violations size printString,
			(' violation' asPluralBasedOn: self violations size) ]
				