class Scooter
  def initialize
    @scooters = {}  # Hash to store scooter data
  end

  def add_scooter(id, name, location)
    @scooters[id] = { name: name, location: location, available: true }
  end

  def rent_scooter(id)
    scooter = @scooters[id]
    if scooter && scooter[:available]
      scooter[:available] = false
      puts "You have rented the #{scooter[:name]} scooter."
    else
      puts "Sorry, the requested scooter is not available for rent."
    end
  end

  def return_scooter(id, location)
    scooter = @scooters[id]
    if scooter && !scooter[:available]
      scooter[:available] = true
      scooter[:location] = location
      puts "You have returned the #{scooter[:name]} scooter to #{location}."
    else
      puts "Invalid scooter or it is already available."
    end
  end

  def list_available_scooters
    available_scooters = @scooters.select { |_, scooter| scooter[:available] }
    if available_scooters.empty?
      puts "No scooters are currently available."
    else
      puts "Available scooters:"
      available_scooters.each do |id, scooter|
        puts "ID: #{id}, Name: #{scooter[:name]}, Location: #{scooter[:location]}"
      end
    end
  end
end

# Example usage:
scooter_system = ScooterSystem.new

scooter_system.add_scooter(1, "Scooter A", "Location 1")
scooter_system.add_scooter(2, "Scooter B", "Location 2")
scooter_system.add_scooter(3, "Scooter C", "Location 1")

scooter_system.list_available_scooters
# Output: 
# Available scooters:
# ID: 1, Name: Scooter A, Location: Location 1
# ID: 2, Name: Scooter B, Location: Location 2
# ID: 3, Name: Scooter C, Location: Location 1

scooter_system.rent_scooter(2)
# Output: You have rented the Scooter B scooter.

scooter_system.list_available_scooters
# Output: 
# Available scooters:
# ID: 1, Name: Scooter A, Location: Location 1
# ID: 3, Name: Scooter C, Location: Location 1

scooter_system.return_scooter(2, "Location 2")
# Output: You have returned the Scooter B scooter to Location 2

scooter_system.list_available_scooters
# Output: 
# Available scooters:
# ID: 1, Name: Scooter A, Location: Location 1
# ID: 2, Name: Scooter B, Location: Location 2
# ID: 3, Name: Scooter C, Location: Location 1