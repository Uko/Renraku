instance creation
newFrom: aMethod inEnvironment: anEnvironment 
	^ self new
		method: aMethod;
		environment: anEnvironment;
		yourself.