as yet unclassified
registerToAnnouncer

	SystemAnnouncer uniqueInstance weak
		on: MethodModified send: #methodModified: to: self;
		on: MethodRecategorized send: #methodRecategorized: to: self