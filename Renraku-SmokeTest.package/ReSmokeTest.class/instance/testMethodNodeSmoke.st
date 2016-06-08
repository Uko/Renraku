tests
testMethodNodeSmoke

	self
		smokeTestOf: (CompiledMethod allInstances collect: #ast)
		named: 'method nodes'