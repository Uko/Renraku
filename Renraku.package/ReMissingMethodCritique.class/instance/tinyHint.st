accessing
tinyHint
	^ class == sourceAnchor entity
			ifTrue: [ selector ]
			ifFalse: [ class name, '>>#', selector ]