initialization
initializeRule: aRule entity: anEntity
	self initialize.
	rule := aRule storeReport: self; yourself.
	entity := anEntity storeReport: self; yourself.
	self revalidate.