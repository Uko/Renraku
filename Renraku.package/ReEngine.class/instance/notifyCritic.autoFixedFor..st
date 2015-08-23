announce
notifyCritic: aCritic autoFixedFor: anEntity

	self announce: (
		ReCriticAutofixed new
			entity: anEntity; 
			critic: aCritic;
			yourself)