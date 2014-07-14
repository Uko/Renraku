as yet unclassified
testPackages
	| model |
	
	model := ReModel new
		packages: { RePackage newFrom: self class package };
		yourself.
		
	self
		assert: (model classes anySatisfy: [ :classModel |
			classModel mirroredEntity = self class ]);
		assert: (model methods anySatisfy: [ :methodModel |
			methodModel mirroredEntity = thisContext method ])