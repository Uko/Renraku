instance creation
uniqueInstance
	"Answer a renraku annoncer."
	
	^ announcer ifNil: [ announcer := self new ]