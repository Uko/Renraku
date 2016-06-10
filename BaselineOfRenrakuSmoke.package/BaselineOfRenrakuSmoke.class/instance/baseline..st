baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			package: 'Renraku-SmokeTest' with: [ spec requires: 'Renraku' ];
		 	baseline: 'Renraku'
		]