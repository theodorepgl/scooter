class Scooter
	attr_accessor :state, :id
  
	def initialize(id)
	  @id = id
	  @state = "Available"
	end
  
	def rent_scooter
	  if @state == "Available"
		@state = "Rented"
		puts "Scooter #{@id} has been rented."
	  else
		puts "Scooter #{@id} is currently #{@state}."
	  end
	end
  
	def return_scooter
	  if @state == "Rented"
		@state = "Available"
		puts "Scooter #{@id} has been returned."
	  else
		puts "Scooter #{@id} is currently #{@state}."
	  end
	end
  
	def break_scooter
	  if @state == "Available"
		@state = "Broken"
		puts "Scooter #{@id} has been marked as broken."
	  else
		puts "Scooter #{@id} cannot be marked as broken while it is #{@state}."
	  end
	end
  
	def repair_scooter
	  if @state == "Broken"
		@state = "Available"
		puts "Scooter #{@id} has been repaired."
	  else
		puts "Scooter #{@id} cannot be repaired while it is #{@state}."
	  end
	end
  
	def maintenance
	  if @state == "Broken"
		puts "Scooter #{@id} is being taken to the garage or repair shop for maintenance."
		repair_scooter
	  else
		puts "Scooter #{@id} does not require maintenance."
	  end
	end
  end