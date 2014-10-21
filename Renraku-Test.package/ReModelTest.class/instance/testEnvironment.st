tests
testEnvironment
	| model |
	
	model := ReModel new
		environment: self class package asEnvironment;
		yourself.
		
	self
		assert: (model packages anySatisfy: [ :package |
			package = self class package ]);
		assert: (model  classes anySatisfy: [ :class |
			class = self class ]);
		assert: (model  methods anySatisfy: [ :method |
			method = thisContext method ])