*renraku
ban: aCritic

	ReSystemAnnouncer uniqueInstance
		notifyCritic: aCritic
		of: aCritic sourceAnchor entity
		BannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aCritic rule for: self.