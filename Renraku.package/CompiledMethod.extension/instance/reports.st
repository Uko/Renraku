*renraku
reports
	^ self propertyValueAt: #reports ifAbsent: [ 
		self propertyValueAt: #reports put: Set new ]