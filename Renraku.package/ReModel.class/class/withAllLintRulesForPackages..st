instance creation
withAllLintRulesForPackages: aCollection

	^ self withAllLintRules
		environment: (RBPackageEnvironment packages: aCollection);
		yourself 