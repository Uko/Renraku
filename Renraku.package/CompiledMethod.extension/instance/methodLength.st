*Renraku-Validation
methodLength
<renrakuValidation>

	^ (REMetricComparingRule new
		initializeMetric: #linesOfCode
		bound: 50) validate: self