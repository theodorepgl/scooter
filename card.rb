class Card
	attr_reader :balance
	def initialize(balance=0)
		@balance = balance
	end

	def reload(amount)
		@balance += amount
	end

	def deduct_fare(amount)
		@balance -= amount
	end
end