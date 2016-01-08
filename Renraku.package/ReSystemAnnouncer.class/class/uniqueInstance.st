instance creation
uniqueInstance
	"I'm a singleton…"
	uniqueInstance ifNil: [ 
		uniqueInstance := self new.
		(Smalltalk hasClassNamed: #QAEventCollector) ifTrue: [ 
		#QAEventCollector asClass new
			perform: #occupant: with: uniqueInstance;
			perform: #category: with: #qualityAssistant;
			register;
			perform: #linkToReSystemAnnouncer: with: uniqueInstance ] ].
	
	^ uniqueInstance