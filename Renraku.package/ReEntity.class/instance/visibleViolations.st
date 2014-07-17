accessing
visibleViolations
	^ self violations select: [ :v | v rule hiden not ]