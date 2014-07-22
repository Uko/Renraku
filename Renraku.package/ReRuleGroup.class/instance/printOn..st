printing
printOn: aStream

	aStream nextPutAll: name.
	
	self numberOfViolations > 0
		ifTrue: [ 
			aStream
				nextPutAll: ' (';
				print: self numberOfViolations;
				nextPut: $) ]