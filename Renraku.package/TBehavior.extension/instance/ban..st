*renraku
ban: aCritique

	ReSystemAnnouncer uniqueInstance
		notifyCritic: aCritique
		of: aCritique sourceAnchor entity
		bannedOn: self.

	(TheManifestBuilder of: self)
		banRule: aCritique rule for: self.