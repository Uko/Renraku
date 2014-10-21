*renraku
storeReport: aReport

	self reports add: aReport.
	self signalUpdate.


	^ aReport