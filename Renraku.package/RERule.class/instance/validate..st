as yet unclassified
validate: anEntity

	^ reports
		detect: [ :report |
			report entity = anEntity ]
		ifFound: #revalidate
		ifNone: [ 
			RePort
				rule: self
				entity: anEntity ]