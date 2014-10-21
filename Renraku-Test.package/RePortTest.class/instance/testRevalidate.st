tests
testRevalidate

	| report class |

	class := Object
		subclass: 'MyTestingClass'
		instanceVariableNames: 'i0 i1 i2 i3 i4 i5 i6 i7 i8 i9'
		classVariableNames: ''
		poolDictionaries: ''
		category: self class category.

	report := RePort
		rule: (ReRule new: RBExcessiveVariablesRule new)
		entity: class.
	
	self assert: report isNegative.
	
	class := Object
		subclass: class name
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self class category.
	
	report revalidate.
	
	self assert: report isPositive.
	
	class removeFromSystem
	