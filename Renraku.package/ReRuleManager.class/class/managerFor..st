instance-creation
managerFor: aCodeEntity 
	^ managers
		at: aCodeEntity package
		ifAbsentPut: [ self newManagerForPackage: aCodeEntity package ]