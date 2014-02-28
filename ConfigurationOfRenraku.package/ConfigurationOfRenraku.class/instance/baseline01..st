baselines
baseline01: spec
	<version: '0.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'github://Uko/Renraku:master'.

		spec
			package: 'Renraku'";
			package: 'Renraku-Test' with: [ spec requires: 'Renraku' ]".
		
		spec
			group: 'default' with: #('Renraku')
	]