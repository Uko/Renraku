as yet unclassified
testMethodChanged

	| reMethod newMethod protocol updates |

	reMethod := ReMethod newFrom: testMethod.
	updates := 0.
	
	reMethod onUpdate: [ updates := updates + 1 ].
	
	newMethod := testMethod methodClass >> (testMethod methodClass compile:
		testMethod selector, ' self subclassResponsibility').
		
	self
		assert: reMethod
		mirroredEntity equals: newMethod.
	self assert: updates equals: 1.


	protocol := 'nuke proto'.
	newMethod protocol: protocol.
	
	self
		assert: reMethod mirroredEntity protocol
		equals: protocol.
	self assert: updates equals: 2.