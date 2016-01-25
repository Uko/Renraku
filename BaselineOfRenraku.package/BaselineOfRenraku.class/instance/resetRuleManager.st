pre-post-load-do-its
resetRuleManager

	#ReRuleManager asClassIfPresent: [ :managerClass |
		managerClass reset ]