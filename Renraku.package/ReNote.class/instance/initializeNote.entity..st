as yet unclassified
initializeNote: aText entity: anEntity
	self initialize.
	text := aText.
	feedback := false.
	entity := anEntity storeReport: self; yourself.
	
	RenrakuAnnouncer uniqueInstance reportAdded: self