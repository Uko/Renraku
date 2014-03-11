*Renraku
ignoreReport: aReport
	| reports |
	
	(reports := self reports)
		detect: [ :rep |
			rep class = aReport class ]
		ifFound: [ :rep |
			reports remove: reports.
			self ignoredReports add: rep ]