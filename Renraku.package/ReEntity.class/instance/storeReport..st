as yet unclassified
storeReport: aReport 

	reports add: aReport.
	self signalUpdate.
	
	^ aReport