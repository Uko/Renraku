as yet unclassified
methodModified: evt 
	(environment includesMethod: evt newMethod) ifTrue: [ 
		evt newMethod revalidate ]
	
	