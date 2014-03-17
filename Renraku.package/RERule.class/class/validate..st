as yet unclassified
validate: aMethod
	(aMethod isIgnoringReportsOf: self)
	ifFalse: [ ^ self default validate: aMethod ]