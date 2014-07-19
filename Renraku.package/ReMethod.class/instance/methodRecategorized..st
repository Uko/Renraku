as yet unclassified
methodRecategorized: evt

	evt methodAffected == self mirroredEntity
		ifTrue: [
			self revalidate ]