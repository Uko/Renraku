accessing
packages: anObject
	self flushCache.
	packages := anObject.
	self initializeReports