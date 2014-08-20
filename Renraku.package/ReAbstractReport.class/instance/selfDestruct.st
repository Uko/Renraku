finalization
selfDestruct
	| entityHolder |
	entity killReport: self.
	entityHolder := entity.
	entity := nil.
	
	(RenrakuAnnouncer uniqueInstance
		reportRemoved: self
		forEntity: entityHolder)