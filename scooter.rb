class Scooter
	attr_reader :id, :status
	def initialize()
		@id = rand(1000..9999)
		@status = "Available"
	end

	def park(station)
		station.plus
		@status = "Available"
	end

	def leave(station)
		station.minus
		status = "Rented"
	end

	def broken!
		@status = "Broken"
	end

	def repaired!
		@status = "Available"
	end
end


scooterA = Scooter.new()
scooterB = Scooter.new()
puts scooterA.status
puts scooterB.status