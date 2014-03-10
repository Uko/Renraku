*Renraku
reports

	^ (RenrakuStorage default methodReportsFor: self)
		ifNil: [ RenrakuStorage default set: Set new ofMethodReportsFor: self ]
		ifNotNilDo: #yourself