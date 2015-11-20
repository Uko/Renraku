accessing
methodRules

	methodRules ifNil: [ self initializeRules ].

	^ methodRules