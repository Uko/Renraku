accessing
allDescendents
	^ self descendents, (self descendents flatCollect: #allDescendents)