initialization
printOn: aStream

	aStream nextPutAll: (self name first: (20 min: self name size)).
	
	self numberOfViolations > 0
		ifTrue: [ 
			aStream
				nextPutAll: ' (';
				print: self numberOfViolations;
				nextPut: $) ]