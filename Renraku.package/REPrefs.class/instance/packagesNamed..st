accessing
packagesNamed: aCollection
	packages := aCollection
		collect: [ :name |
			RPackageOrganizer default
				packageNamed: name ]
		as: Set