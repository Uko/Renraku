as yet unclassified
initialize
	super initialize.
	reports := Set new.
	announcer := Announcer new.
	self registerToAnnouncer.