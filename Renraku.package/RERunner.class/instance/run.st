accessing
run
	result :=  config packages flatCollect: [ :package |
		package methods flatCollect: [ :method |
			config rules collect: [ :rule |
				rule validate: method ] ] ]