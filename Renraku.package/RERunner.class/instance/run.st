accessing
run
	result :=  config packages flatCollect: [ :package |
		package coreMethods, package extensionMethods flatCollect: [ :method |
			config rules collect: [ :rule |
				rule validate: method compiledMethod ] ] ]