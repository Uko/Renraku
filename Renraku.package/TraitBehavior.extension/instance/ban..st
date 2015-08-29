*renraku
ban: aCritic

	ReEngine uniqueInstance notifyCritic: aCritic BannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aCritic rule for: self.