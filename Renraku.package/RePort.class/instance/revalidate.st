as yet unclassified
revalidate
	| oldFeedBack oldSelection |
	oldSelection := selection.
	oldFeedBack := feedback.
	
	selection := nil.
	
	feedback := (entity violatingRule: rule) not.
	selection := rule lintRule result selectionIntervalFor: entity mirroredEntity definition.
	
	  (feedback ~= oldFeedBack or:
	[ selection ~= oldSelection ]) ifTrue: [ 
		RenrakuAnnouncer uniqueInstance reportChanged: self ]