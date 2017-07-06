pre-post-load-do-its
resetRuleManager
	self class environment
		at: #ReRuleManager
		ifPresent: [ :managerClass | managerClass reset ]