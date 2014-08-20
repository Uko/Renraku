announce
reportRemoved: aReport forEntity: anEntity

	self announce: (RePortRemoved new
		affectedReport: aReport;
		affectedEntity: anEntity)