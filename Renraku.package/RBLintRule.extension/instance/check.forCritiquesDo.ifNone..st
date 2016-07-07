*renraku
check: anEntity forCritiquesDo: aCriticBlock ifNone: alternativeBlock

	(self basicCheck: anEntity)
		ifTrue: [ aCriticBlock cull: (self critiqueFor: anEntity) ]
		ifFalse: [ alternativeBlock value ]