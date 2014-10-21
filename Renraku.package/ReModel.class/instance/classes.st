accessing
classes
	^ classes ifNil: [ classes := environment definedClasses ]