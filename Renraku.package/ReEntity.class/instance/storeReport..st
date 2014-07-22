validation
storeReport: aReport 

	reports add: aReport.
	self signalUpdate.
	
	^ aReport