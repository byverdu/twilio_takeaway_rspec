require "./lib/dish"

class Order

	attr_accessor  :dishes, :total_price

	def initialize
		@dishes = []
		@total_price = 0.0
	end

	def proceed

	end

	def print_out
		@dishes.map { |dish| "#{dish.quantity} #{dish.name}"}
	end

end