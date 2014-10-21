initialization
generateReportsFor: anEntity

		reports addAll: (self rules collect: [ :rule |
			RePort
				rule: rule
				entity: anEntity ])