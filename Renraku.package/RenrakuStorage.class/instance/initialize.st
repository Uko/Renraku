as yet unclassified
initialize

	self class instanceVariables do: [ :var |
		self instVarNamed: var put: Dictionary new ]