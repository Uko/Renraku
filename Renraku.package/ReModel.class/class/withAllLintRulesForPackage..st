instance creation
withAllLintRulesForPackage: anRPackage

	^ self withAllLintRules
		environment: anRPackage asEnvironment;
		yourself 