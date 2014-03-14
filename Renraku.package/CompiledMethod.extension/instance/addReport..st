*Renraku
addReport: aReport

	self reports removeAllSuchThat: [ :rep |
		rep rule = aReport rule ]. 
	self reports add: aReport