as yet unclassified
initialize
	super initialize.
	reports := Set new.
	onUpdateBlock := [ ].
	self registerToAnnouncer.