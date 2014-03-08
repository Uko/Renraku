as yet unclassified
gtInspectorSendersIn: composite
     <gtInspectorPresentationOrder: 2>
     ^ composite smalltalkCode 
		title: 'Method';
		smalltalkClass: [ self target methodClass ];
		display: [ self target getSource ];
		act: [ self target browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'