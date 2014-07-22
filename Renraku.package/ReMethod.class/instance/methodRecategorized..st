announcements
methodRecategorized: evt

	evt methodAffected == self mirroredEntity
		ifTrue: [
			self revalidate ]