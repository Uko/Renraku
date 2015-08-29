announce
notifyEntityCriticizedWith: critics

	self announce: (
		ReEntityCriticized new 
			critics: critics;
			yourself)