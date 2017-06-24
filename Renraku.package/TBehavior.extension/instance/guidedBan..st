*renraku
guidedBan: aCritique

	| candidates |
	
	ReSystemAnnouncer uniqueInstance notifyBanInitiatedFor: aCritique of: self.
	
	candidates := { self . self package . Smalltalk }.
	
	(UIManager default
		chooseFrom: (candidates collect: #reBanName)
		values: candidates
		title: 'On which level do you want to ban the rule?')
			ifNotNil: [ :entity | entity ban: aCritique ]