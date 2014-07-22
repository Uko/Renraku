announcements
methodModified: evt

	evt oldMethod == self mirroredEntity ifFalse: [ ^ self ].
	
	self method: evt newMethod.
	self revalidate 