*renraku
ban: aCritic

	ReSystemAnnouncer uniqueInstance
		notifyCritique: aCritic
		of: aCritic sourceAnchor entity
		bannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aCritic rule for: self.