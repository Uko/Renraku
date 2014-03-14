*Renraku
isIgnoringReportsOf: aRule

	^ self ignoredReports anySatisfy: [
		:report | report rule = aRule ]