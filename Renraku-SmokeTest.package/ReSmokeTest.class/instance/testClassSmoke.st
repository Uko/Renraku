tests
testClassSmoke

	self
		smokeTestOf: (Metaclass allInstances collect: #theNonMetaClass)
		named: 'classes'