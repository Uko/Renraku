accessing
visibleViolations
	^ self violations reject: [ :v | v rule hiden ]