accessing
prefs
	^ prefs ifNil: [ prefs := REPrefs default ]