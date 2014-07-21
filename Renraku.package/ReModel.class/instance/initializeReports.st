initialization
initializeReports
	| entityValidationBlock |
	
	entityValidationBlock := [ :entity |
		reports addAll: (self rules collect: [ :rule |
			| report |
			report := RePort
				rule: rule
				entity: entity.
			report announcer weak
				on: RePortChanged
				send: #announce:
				to: announcer ]) ].

	self classes
		do: entityValidationBlock
		displayingProgress: 'Checking classes'.

	self methods
		do: entityValidationBlock
		displayingProgress: 'Checking methods'