# DONE Scooters exist in two states: "Available" and "Rented."
# DONE Implement methods to transition scooter states (e.g., rent and return) and display current status.
# DONE Scooters can also be marked as "Broken," rendering them temporarily unavailable for rental until repaired.
# DONE Broken scooters should be taken to the garage or repair shop for maintenance and returned to the fleet once repaired. 
# Calculate and present rental duration and associated costs.
# Designate docking stations in specific areas for scooter returns.
# Docking stations possess a predefined scooter capacity.
# Users must return a rented scooter before they can rent another one.
# (Bonus) A way to keep track of information about the rented scooter, the user renting it, and the start and end times of the rental.
# (Bonus) Introduce a pricing system where rental costs vary based on different times of the day (peak hours vs. off-peak hours). "Seasonal offer example"

# run.rb

require_relative 'user.rb'
require_relative 'scooter.rb'
require_relative 'station.rb'
require_relative 'calculation.rb'

# Create User
user = User.new('John Doe', 'john.doe@example.com', 25)

# Create Scooter
scooter = Scooter.new('2022-01-01 09:00:00', '2022-01-01 11:00:00')

# Create Station
station = Station.new('Central Station', '123 Main St')

# Perform Calculation
calculation = Calculation.new(scooter.start_time, scooter.end_time)
rental_duration = calculation.rental_duration

# Output
puts "User: #{user.name}, Email: #{user.email}, Age: #{user.age}"
puts "Scooter Start Time: #{scooter.start_time}"
puts "Scooter End Time: #{scooter.end_time}"
puts "Rental Duration: #{rental_duration} seconds"
puts "Station: #{station.name}, Address: #{station.address}"










