*renraku
definedClasses
	| classes |
	classes := IdentitySet new: 4096.
	self definedClassesDo: [ :each | classes add: each ].
	^ classes