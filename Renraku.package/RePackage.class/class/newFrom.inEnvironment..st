as yet unclassified
newFrom: anRPackage inEnvironment: anEnvironment

	^ self new
		package: anRPackage;
		environment: anEnvironment;
		classes:
			(anRPackage definedClasses collect: [ :class |
				VClass newFrom: class inEnvironment: anEnvironment ]);
		exClasses:
			(anRPackage extendedClasses
				reject: [ :class |
					anEnvironment definesClass: class ]
				thenCollect: [ :class |
					VClass newFrom: class inEnvironment: anEnvironment ]);
		yourself.