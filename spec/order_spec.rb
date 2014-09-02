require "order"
require "dish"
require "user"

describe Order do
  
	let(:burger) { Dish.new('burger',5.50) }
	let(:fries)  { Dish.new('fries' ,1.50) }
	let(:user)   { User.new }

	it "will contain selected dishes" do
		expect(user.to_order.dishes).to be_a(Array)
	end

	it "has a total price" do
		expect(user.to_order.total_price).to be_a(Float)
	end

	it "can proceed an order" do
		expect(user.to_order).to respond_to(:proceed)

		user.place_order(burger,2)

		expect(user.to_order.total_price).to eq(11.0)
	end

	it "prints out the order" do
		user.place_order(burger,2)

		expect(user.to_order.print_out).to eq(["#{burger.quantity} #{burger.name}"])
	end



end