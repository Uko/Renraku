as yet unclassified
classDefinitionModified: evt
	(environment definesClass: evt oldClassDefinition) ifTrue: [ 
		self generateReportsFor: evt newClassDefinition ]