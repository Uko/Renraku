tests
testInitialize
	| entities |
	
	entities := self class methods, { self class }.
	
	entities do: [ :entity |
	self
		assert: entity reports isCollection;
		assert: entity reports isEmpty ]