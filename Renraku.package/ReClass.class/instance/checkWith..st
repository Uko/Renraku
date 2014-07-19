lint hack
checkWith: lintRule
	lintRule checkClass: (
		RBSmalllintContext newNoCache
			selectedClass: self mirroredEntity;
			yourself)