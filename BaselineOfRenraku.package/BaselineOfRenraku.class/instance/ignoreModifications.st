baseline
ignoreModifications

	| link |
	link := MetaLink new
		metaObject: [ :receiver | receiver ];
		selector: #value:;
		arguments: #(receiver);
		control: #instead.
		
	(MCVersionLoader >> #checkForModificationsIfCancel:ifMerge:) ast link: link