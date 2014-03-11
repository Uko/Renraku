as yet unclassified
set: aValue for: aProp ofA: aCompiledMethod

	^ (self instVarNamed: aProp)
		at: aCompiledMethod
		put: aValue