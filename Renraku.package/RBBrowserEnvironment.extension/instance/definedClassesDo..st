*renraku
definedClassesDo: aBlock 
	self allClassesDo: [ :each |
		(self definesClass: each)
			ifTrue: [ aBlock value: each ] ]