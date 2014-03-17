as yet unclassified
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #'Renraku')
		order: 0.2; 
		parent: #World;
		label: 'Renraku';
		icon: self renIcon;
		with: [ 
			
			(aBuilder item: #'Prefs')
				order: 1; 
				label: 'Open preferences';
				action: [ self new openWithSpec ] ]