baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			preLoadDoIt: #unsubscribeReEngine;
			package: 'Renraku';
			package: 'Renraku-Test' with: [ spec requires: 'Renraku' ];
			package: 'Renraku-Help' with: [ spec requires: 'Renraku' ];
			postLoadDoIt: #resetRuleManager.

		spec
			group: 'default' with: #('Renraku' 'Renraku-Test' 'Renraku-Help');
			group: 'Core' with: #('Renraku');
         group: 'Tests' with: #('Renraku-Test') ]