*Renraku-UI
renrakuMenu: aBuilder
	<nautilusGlobalMethodMenu>
	| selectedMethod reports |
	selectedMethod := aBuilder model selectedMethod.
	
	reports := selectedMethod class methods
		select: [ :method | method hasPragmaNamed: #renrakuValidation ]
		thenCollect: [ :validator | selectedMethod executeMethod: validator ].
	
	(reports select: #important) ifNotEmptyDo: [ :importantReports |
		(aBuilder item: #Reports)
		withSeparatorAfter;
		order: -100;
		with: [
			importantReports do: [ :report |
				(aBuilder item: report message asSymbol)
				action: [ SoundSystem current beep ] ] ] ] 