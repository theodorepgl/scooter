require_relative 'scooter.rb'

class User
  attr_accessor :name, :scooter

  def initialize(name)
    @name = name
    @scooter = nil
  end

  def rent_scooter(scooter)
    if scooter.state == "Available"
      scooter.rent_scooter
      @scooter = scooter
      puts "#{name} has rented Scooter #{scooter.id}."
    else
      puts "Scooter #{scooter.id} is currently #{scooter.state}."
    end
  end

  def return_scooter
    if @scooter.nil?
      puts "#{name} does not have any scooter to return."
    else
      @scooter.return_scooter
      puts "#{name} has returned Scooter #{scooter.id}."
      @scooter = nil
    end
  end

  def break_scooter(scooter)
    if scooter.state == "Available"
      scooter.break_scooter
      puts "Scooter #{scooter.id} has been marked as broken."
    else
      puts "Scooter #{scooter.id} cannot be marked as broken while it is #{scooter.state}."
    end
  end

  def repair_scooter(scooter)
    if scooter.state == "Broken"
      scooter.repair_scooter
      puts "Scooter #{scooter.id} has been repaired."
    else
      puts "Scooter #{scooter.id} cannot be repaired while it is #{scooter.state}."
    end
  end
end

# Example usage:
scooter1 = Scooter.new(1)
scooter2 = Scooter.new(2)

user1 = User.new("John")
user1.rent_scooter(scooter1)
user1.return_scooter

user2 = User.new("Alice")
user2.rent_scooter(scooter2)
user2.break_scooter(scooter2)
user2.repair_scooter(scooter2)
user2.return_scooter