accessing
methods
	^ methods ifNil: [ methods := self classes flatCollect: #descendents ]