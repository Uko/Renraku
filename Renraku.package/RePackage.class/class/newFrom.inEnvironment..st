instance creation
newFrom: anRPackage inEnvironment: anEnvironment

	^ self new
		package: anRPackage;
		environment: anEnvironment;
		classes:
			(anRPackage definedClasses collect: [ :class |
				ReClass newFrom: class inEnvironment: anEnvironment ]);
		exClasses:
			(anRPackage extendedClasses
				reject: [ :class |
					anEnvironment definesClass: class ]
				thenCollect: [ :class |
					ReClass newFrom: class inEnvironment: anEnvironment ]);
		yourself.