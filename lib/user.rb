require "./lib/order"

class User
     
	attr_accessor :name, :number, :order, :status

	def initialize(name=nil,number=nil)
		@name     = name
		@number   = number
		@status   = nil
		@order = Order.new
	end

	def place_order(dish, quantity)
		@status   = 'order placed'
		
		dish.quantity = quantity

		@order.dishes << dish 

		@order.dishes.flatten
	end
end
