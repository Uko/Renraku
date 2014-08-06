as yet unclassified
methodRemoved: ann

	methods
		detect: [ :method | 
			method mirroredEntity = ann methodAffected ]
		ifFound: [ :method |
			method selfDestruct.
			methods remove: method ] .
	
	