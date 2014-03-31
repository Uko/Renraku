accessing
packagesNamed: aCollection
	self packages:
		(aCollection
			collect: [ :name |
				RPackageOrganizer default
					packageNamed: name ]
			as: Set)