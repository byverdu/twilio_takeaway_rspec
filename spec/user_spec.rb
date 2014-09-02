require "user"
require "order"
require "dish"
require "hide"
require "takeaway"

describe User do

	include Sms

	let(:takeaway) { Takeaway.new('Fisherman','03487935472') }
	let(:burger)  { Dish.new('scampi',7.5) }
	let(:order)   { Order.new }

	let(:user)    { User.new('Bob','07720860376') }

	context 'when is initialized' do
		
		it "has a name" do
			expect(user.name).to eql('Bob')
		end

		it "has a telephone number" do
			expect(user.number).to eq('07720860376')
		end

		it "has a status for placing an order" do
			expect(user.status).to be_nil
		end
		it "knows that can order" do
			expect(user.order).to be_a(order.class) 
		end
	end

	context 'placing the order' do

		it "can place an order with quantity" do
			expect(user.place_order(burger, 1)).to eq([burger])
		end
		
		it "changes his status after placing an order" do
			user.place_order(burger,1)

			expect(user.status).to eq('order placed')
		end

		xit 'sends an Sms saying that the order will be delivered in an hour' do
		expect(user.client.account.messages).to receive(:create)
		user.send_sms
	end

	end
end