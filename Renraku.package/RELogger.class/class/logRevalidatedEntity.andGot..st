logging
logRevalidatedEntity: anEntity andGot: aCritics

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self revalidatekey;
			<< self separator;
			<< anEntity name;
			<< self separator.

		self logCriticsList: aCritics on: str.
		
		str lf ]
