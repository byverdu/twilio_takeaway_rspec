require "./lib/order"

class User
     
	attr_accessor :name, :number, :to_order, :status

	def initialize(name=nil,number=nil)
		@name     = name
		@number   = number
		@status   = nil
		@to_order = Order.new
	end

	def place_order(dish, quantity)
		@status   = 'order placed'
		
		dish.quantity = quantity

		@to_order.dishes << dish 

		@to_order.dishes.flatten
	end
end
