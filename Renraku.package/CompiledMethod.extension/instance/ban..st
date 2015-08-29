*renraku
ban: aQACritic

	ReEngine uniqueInstance notifyCritic: aQACritic BannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aQACritic rule for: self.