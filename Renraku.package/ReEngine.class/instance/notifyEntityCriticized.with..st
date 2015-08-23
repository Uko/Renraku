announce
notifyEntityCriticized: anEntity with: critics

	self announce: (
		ReEntityCriticized new
			entity: anEntity; 
			critics: critics;
			yourself)