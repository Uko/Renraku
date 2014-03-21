initialization
initialize

	self class instanceVariables do: [ :var |
		self instVarNamed: var put: WeakKeyDictionary new ]