*renraku
guidedBan: aCritique

	| candidates |
	
	ReSystemAnnouncer uniqueInstance notifyBanInitiatedFor: aCritique of: self.
	
	candidates := self banLevelCandidates.
	
	(UIManager default
		chooseFrom: (candidates collect: #reBanName)
		values: candidates
		title: 'On which level do you want to ban the rule?')
			ifNotNil: [ :entity | entity ban: aCritique ]