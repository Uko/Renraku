initialization
initialize
	super initialize.
	environment := RBPackageEnvironment new.
	rules := #().
	reports := WeakSet new.
	self registerToAnnouncer.