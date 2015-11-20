accessing
classRules

	classRules ifNil: [ self initializeRules ].
	
	^ classRules