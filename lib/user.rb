require "./lib/order"

class User
     
	attr_accessor :name, :number, :my_order, :status

	def initialize(name=nil,number=nil)
		@name     = name
		@number   = number
		@status   = nil
		@my_order = Order.new
	end

	def place_order(dish, quantity)
		@status   = 'order placed'
		
		dish.quantity = quantity

		@my_order.user_dishes << dish 

		@my_order.user_dishes.flatten
	end
end
