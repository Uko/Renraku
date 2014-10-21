as yet unclassified
classModified: evt 
	
	(environment definesClass: evt classAffected) ifTrue: [ 
		evt classAffected revalidate ]