event subscriptions
classAddedOrRemoved: aClassAddedAnnouncement 
	| class |
	class := aClassAddedAnnouncement classAffected.

	((class isKindOf: RBLintRule) or: [ 
	  class isKindOf: ReAbstractRule ]) 
		ifTrue: [ self reset ] 