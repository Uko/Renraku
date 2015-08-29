*renraku
ban: aCritic

	ReEngine uniqueInstance notifyCritic: aCritic of: aCritic target BannedOn: self.

	(TheManifestBuilder of: self)
		skipRule: aCritic rule for: self.