class Timer
	
	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
		@hours = 0
		@minutes = 0
	end

	def time_string()
		convert_seconds
		convert_minutes
		convert_time
		"#{@hours_string}:#{@minutes_string}:#{@seconds_string}"
	end

	private

		 def convert_seconds
		 	while @seconds >= 60
		 		@seconds -= 60
		 		@minutes += 1
		 	end
		 end

		 def convert_minutes
		 	while @minutes >= 60
		 		@minutes -= 60
		 		@hours += 1
		 	end
		 end

		 def convert_time
		 	if @seconds < 10
		 		@seconds_string = "0#{@seconds}"
		 	else
		 		@seconds_string = @seconds.to_s
		 	end
		 	if @minutes < 10
		 		@minutes_string = "0#{@minutes}"
		 	else
		 		@minutes_string = @minutes.to_s
		 	end
		 	if @hours < 10
		 		@hours_string = "0#{@hours}"
		 	else
		 		@hours_string = @hours.to_s
		 	end
		 end
end