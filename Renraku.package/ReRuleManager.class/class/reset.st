utility
reset
	<script>
	managers := Dictionary new.
	default := nil.
	self allInstances do: [ :inst |
		self flag: 'remove in future. this is just to stop
		            the announcements from choaking old instances'.
		inst becomeForward: nil ].