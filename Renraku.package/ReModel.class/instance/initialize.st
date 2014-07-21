initialization
initialize
	super initialize.
	packages := #().
	rules := #().
	reports := Set new.
	announcer := Announcer new