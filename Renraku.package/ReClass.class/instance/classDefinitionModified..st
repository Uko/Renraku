events
classDefinitionModified: evt


	evt oldClassDefinition == mirroredEntity
		ifTrue: [
			self flag: 'This is a dirty hack because of https://pharo.fogbugz.com/f/cases/13020/'.
			mirroredEntity := evt newClassDefinition.
			self revalidate.
			mirroredEntity := evt oldClassDefinition ]