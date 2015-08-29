announce
notifyCriticAutoFixed: aCritic

	self announce: (
		ReCriticAutofixed new
			critic: aCritic;
			yourself)