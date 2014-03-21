accessing
run
	| stream |
	config packages ifEmpty: #copy.
	stream := (OrderedCollection new: 0) writeStream.
	config packages
		do: [ :package |
			stream nextPutAll:
				(package methods flatCollect: [ :method |
					config rules collect: [ :rule |
						rule validate: method ] ]) ]
		displayingProgress: 'Generating report'.
	
	result := stream contents