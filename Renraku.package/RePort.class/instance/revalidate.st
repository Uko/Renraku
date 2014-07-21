as yet unclassified
revalidate
	| oldFeedBack |
	selection := nil.
	oldFeedBack := feedback.
	feedback := (entity violatingRule: rule) not.
	selection := rule lintRule result selectionIntervalFor: entity mirroredEntity definition.
	
	feedback not = oldFeedBack ifTrue: [ 
		announcer announce:
			(RePortChanged for: self to: feedback) ]