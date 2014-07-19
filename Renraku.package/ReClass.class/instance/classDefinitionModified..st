events
classDefinitionModified: evt

	evt oldClassDefinition == mirroredEntity
		ifTrue: [ self revalidate ]