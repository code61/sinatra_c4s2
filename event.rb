
class Event

	def initialize(event)
		@event = event
	end

	def name
		if @event.split('_').first == 'men'
			"Men's Monthly Triathlon"
		else
			"Ladies' Monthly Triathlon"
		end
	end

	def date
		if @event.split('_').last == 'march'
	   '15/3/2014'
	 else
	   '15/4/2014'
	 end
	end

end
