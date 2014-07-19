events
classModified: evt

	evt classAffected == mirroredEntity
		ifTrue: [ self revalidate ]