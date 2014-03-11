as yet unclassified
get: aProp ofA: aCompiledMethod

	^ (self instVarNamed: aProp)
		at: aCompiledMethod
		ifAbsentPut: nil
		