reflective operations
doesNotUnderstand: aMessage
	| re |
	re := '^set\:of(\w+)For\:$' asRegex.
	(re matches: aMessage selector) ifTrue: [
		^ self
			set: aMessage arguments first
			for: (re subexpression: 2) withFirstCharacterDownshifted
			ofA: aMessage arguments last ].
	
	re := '^(\w+)For\:$' asRegex.
	(re matches: aMessage selector) ifTrue: [
		^ self
			get: (re subexpression: 2)
			ofA: aMessage arguments first ].
	
	^ super doesNotUnderstand: aMessage