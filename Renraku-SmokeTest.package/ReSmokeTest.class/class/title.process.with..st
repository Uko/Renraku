utils
title: aString process: aCollection with: aBlock

	| percentage lastPercent |
	
	FileStream
		stdout << String lf << String lf
		       << '%% ' << aString ; flush.
	
	lastPercent := -1.
	percentage  := 100 / aCollection size.
	
	aString displayProgressFrom: 0 to: aCollection size during: [ :job |
		aCollection withIndexDo: [ :el :index |
			| percent | 
			job value: index.
			percent := (index * percentage) floor.
			lastPercent = percent ifFalse: [ 
				lastPercent := percent.
				FileStream stdout << String lf << percent << $%; flush ].
			aBlock value: el ] ].
	
	FileStream stdout << String lf