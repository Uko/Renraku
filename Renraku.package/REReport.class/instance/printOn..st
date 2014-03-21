printing
printOn: aStream 
	
	aStream nextPut: $[.
	target printOn: aStream.
	aStream nextPut: $]; space.

	aStream nextPutAll: self message