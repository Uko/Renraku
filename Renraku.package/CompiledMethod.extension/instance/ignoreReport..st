*Renraku
ignoreReport: aReport
	| reports |
	
	(reports := self reports)
		detect: [ :rep |
			rep class = aReport class ]
		ifFound: [ :rep |
			reports remove: rep.
			self ignoredReports add: rep ]