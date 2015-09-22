announcement handling
classAdded: aClassAddedAnnouncement 
	rules ifNil: [ ^ self ].
	(aClassAddedAnnouncement classAdded includesBehavior: RBLintRule) ifFalse: [ ^ self ].
	(aClassAddedAnnouncement classAdded canPerform: #name) ifFalse: [ ^ self ].

	self reset