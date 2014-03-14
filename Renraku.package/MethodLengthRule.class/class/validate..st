as yet unclassified
validate: aMethod
	(aMethod isIgnoringReportsOf: self)
	ifFalse: [ ^ default validate: aMethod ]