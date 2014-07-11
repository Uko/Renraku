as yet unclassified
checkWith: lintRule
	lintRule checkMethod: (
		RBSmalllintContext newNoCache
			selectedClass: self mirroredEntity methodClass;
			selector: self mirroredEntity selector
			yourself)