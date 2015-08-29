announce
notifyCritic: aCritic BannedOn: anEntity

	self announce: (
		ReCriticBanned new
			critic: aCritic;
			entityBanLevel: anEntity;
			yourself)