as yet unclassified
complainAbout: aReCritic
	[ 
	ZnClient new
		beOneShot;
		http;
		host: 'localhost';
		port: 4000;
		addPath: 'complaints';
		formAt: 'uuid' put: self uuid asString;
		formAt: 'pharoVersion' put: SystemVersion current highestUpdate asString;
		formAt: 'author' put: Author fullName;
		formAt: 'rule' put: aReCritic rule class name;
		formAt: 'target' put: aReCritic target name;
		formAt: 'time' put: DateAndTime now asString;
		post ]
		on: NetworkError
		do: [ :ex |  ]