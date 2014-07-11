as yet unclassified
newFrom: aClass inEnvironment: anEnvironment

	^ self new
		class: aClass;
		environment: anEnvironment;
		methods: (aClass methods, aClass class methods
			select: [ :method |
				anEnvironment includesMethod: method ]
			thenCollect: [ :method |
				VMethod newFrom: method inEnvironment: anEnvironment ] ) 