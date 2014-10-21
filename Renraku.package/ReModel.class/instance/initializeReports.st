initialization
initializeReports
	| entityValidationBlock |
	
	entityValidationBlock := [ :entity |
		self generateReportsFor: entity.
		Processor yield ].

	self classes
		do: entityValidationBlock
		displayingProgress: 'Checking classes'.

	self methods
		do: entityValidationBlock
		displayingProgress: 'Checking methods'