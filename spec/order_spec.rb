require "order"

describe Order do
  
	let(:burger) { double :dish, name: 'burger', price: 5.50 }
	let(:fries)  { double :dish, name: 'fries' , price: 2.35  }
	let(:user)   { double :user }

	let(:order)  { Order.new }

	it "will contain selected dishes" do
		expect(order.user_dishes).to be_a(Array)
	end

	it "" do
		

	end


end