as yet unclassified
revalidate
	selection := nil.
	feedback  := (entity violatingRule: rule) not.
	selection := rule lintRule result selectionIntervalFor: entity mirroredEntity definition