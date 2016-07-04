private
logErrors: errors
	| errorBag |

	'errors.properties' asFileReference
		ensureDelete;
		writeStreamDo: [ :str | str << 'YVALUE=' << errors size ].
		
	errorBag := (errors collect: [ :er | er first class ]) asBag.
	
	'errors.csv' asFileReference
		ensureDelete;
		writeStreamDo: [ :str |
			errorBag asSet
				do: [ :class | str << class name ]
				separatedBy: [ str << $, ].
			errorBag asSet
				do: [ :class | str << (errorBag occurrencesOf: class) ]
				separatedBy: [ str << $, ] ].