accessing
packagesNamed: aCollection
	packages := aCollection
		collect: [ :name |
			PackageOrganizer default
				packageNamed: name
				ifAbsent: (NotFound signalFor: name) ]
		as: Set