as yet unclassified
testClassChanged

	| reClass newClass comment updates |

	reClass := ReClass newFrom: testClass.
	updates := 0.
	
	RenrakuAnnouncer uniqueInstance
		when: ReEntityUpdated
		do: [ :ann |
			ann affectedEntity == reClass ifTrue: [
				updates := updates + 1 ] ].
	
	newClass := testClass superclass
		subclass: testClass name
		instanceVariableNames: 'one two three'
		classVariableNames: 'Ano Ther One'
		category: testClass category.
		
	self
		assert: reClass
		mirroredEntity equals: newClass.
	self assert: updates equals: 1.


	comment := 'here is a new comment'.
	newClass comment: comment.
	
	self
		assert: reClass mirroredEntity comment
		equals: comment.
	self assert: updates equals: 2.