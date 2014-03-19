as yet unclassified
menuCommandOn: aBuilder
	<worldMenu>
	
	(aBuilder item: #'Reports')
		parent: #Renraku;
		order: 1; 
		label: 'View reports';
		action: [ self newWithDefault openWithSpec ]