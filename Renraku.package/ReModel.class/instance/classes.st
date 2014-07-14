accessing
classes
	^ classes ifNil: [ classes := self packages flatCollect: #descendents ]