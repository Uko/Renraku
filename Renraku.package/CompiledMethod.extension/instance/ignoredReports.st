*Renraku
ignoredReports

	^ (RenrakuStorage default methodIgnoredReportsFor: self)
		ifNil: [ RenrakuStorage default set: Set new ofMethodIgnoredReportsFor: self ]
		ifNotNilDo: #yourself