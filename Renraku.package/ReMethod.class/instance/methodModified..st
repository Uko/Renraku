as yet unclassified
methodModified: evt

	evt oldMethod == self mirroredEntity
		ifTrue: [
			self method: evt newMethod.
			self revalidate ]