initialization
initializeBefore: beforeSymols after: afterSymbols

	before :=
		 (beforeSymols isCollection and:
		[ beforeSymols isString not ])
			ifFalse: [ Set with: beforeSymols asSymbol ]
			ifTrue: [ beforeSymols asSet ].
	after := 
		(afterSymbols isCollection and:
		[ afterSymbols isString not ])
			ifFalse: [ Set with: afterSymbols asSymbol ]
			ifTrue: [ afterSymbols asSet ].