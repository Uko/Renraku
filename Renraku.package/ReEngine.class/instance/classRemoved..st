announcement handling
classRemoved: aClassRemovedAnnouncement

	rules ifNil: [ ^ self ].
	(aClassRemovedAnnouncement classRemoved includesBehavior: RBLintRule) ifFalse: [ ^ self ].
	(rules anySatisfy: [ :rule |
		rule class == aClassRemovedAnnouncement classAffected ]) ifFalse: [ ^ self ].

	self reset