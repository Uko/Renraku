instance creation
newWithDefault
	
	^ self new
		reports: RERunner newWithDefault run result;
		yourself