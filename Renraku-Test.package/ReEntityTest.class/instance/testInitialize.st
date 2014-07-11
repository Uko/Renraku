as yet unclassified
testInitialize
	| entities |
	
	entities := ReEntity withAllSubclasses collect: #new.
	
	entities do: [ :entity |
	self
		assert: entity reports isCollection;
		assert: entity reports isEmpty ]