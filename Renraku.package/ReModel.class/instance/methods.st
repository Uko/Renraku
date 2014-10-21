accessing
methods
	^ methods ifNil: [ methods := environment methods ]