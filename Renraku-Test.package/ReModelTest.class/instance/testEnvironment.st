as yet unclassified
testEnvironment
	| model |
	
	model := ReModel new
		environment: self class package asEnvironment;
		yourself.
		
	self
		assert: (model packages anySatisfy: [ :package |
			package     mirroredEntity = self class package ]);
		assert: (model  classes anySatisfy: [ :classModel |
			classModel  mirroredEntity = self class ]);
		assert: (model  methods anySatisfy: [ :methodModel |
			methodModel mirroredEntity = thisContext method ])