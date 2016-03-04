adding
add: postSelector requiresPreSend: preSelector

	preConditions add: (
		ReInvocationSequenceRuleSequence
			before: preSelector
			after: postSelector)