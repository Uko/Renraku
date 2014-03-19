as yet unclassified
menuCommandOn: aBuilder
	<worldMenu>
	
	(aBuilder item: #'Prefs')
		parent: #Renraku;
		order: 3; 
		label: 'Open preferences';
		action: [ self new openWithSpec ]