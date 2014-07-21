accessing
hiden: boolean
	hiden = boolean ifTrue: [ ^ self ].

	hiden := boolean.
	RenrakuAnnouncer uniqueInstance ruleVisiblityChanged: self