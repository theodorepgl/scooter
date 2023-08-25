class User
  attr_reader :name, :status, :age
  def initialize(name, age)
    @name = name
    @age = age
    @status = "Not Renting"
  end
end


userA = User.new("Theodore", 27)
puts userA.name
puts userA.age
puts userA.status



puts "Please enter your name to start rent a scooter."
puts user_name = gets.chomp.upcase
puts
puts "Hello, #{user_name}"
puts


