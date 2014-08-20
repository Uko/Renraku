accessing
visibleViolations
	^ self violations reject: [ :v | v class = RePort and: [ v rule hiden ] ]