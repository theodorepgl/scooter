class Station
	attr_reader :name, :max_capacity, :current_capacity
	def initialize(station_name, max_capacity)
		@name = station_name
		@max_capacity = max_capacity
		@current_capacity = 0
	end

	def minus
		@current_capacity -= 1
	end

	def plus
		if @current_capacity < max_capacity
			@current_capacity += 1
		else
			puts "Capacity full. Please park somewhere else."
		end
	end
end



stationA = Station.new("Aeropod",4)
stationB = Station.new("Tanjung Aru", 2)
puts stationA.current_capacity
puts stationB.current_capacity