*renraku
ban: aCritic

	ReEngine uniqueInstance notifyCritic: aCritic BannedOn: self.

	(TheManifestBuilder of: self)
		skipRule: aCritic rule for: self.