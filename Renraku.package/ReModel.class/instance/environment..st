accessing
environment: anEnvironment

	self packages: (anEnvironment packages collect: [ :pack |
		RePackage newFrom: pack inEnvironment: anEnvironment ] )
