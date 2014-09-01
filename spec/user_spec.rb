require "user"

describe User do

	let(:order) { double :order }
	let(:dish)  { double :dish } 
	let(:user)  { User.new('Bob','07720860376') }

	context 'when is initialized' do
		
		it "has a name" do
			expect(user.name).to eql('Bob')
		end

		it "has a telephone number" do
			expect(user.number).to eq('07720860376')
		end

		it "has a status for placing an order" do
			expect(user.status).to eq(nil)
		end
		it "knows that can order" do
			expect(user.my_order).to eq([]) 
		end
	end

	context 'placing the order' do
		
		it "can accept more than one dish" do
			expect(user.place_order(dish,dish)).to eq([[dish,dish]])
		end

		it "can place an order" do
			expect(user.place_order(dish)).to eq([[dish]])
		end


		it "changes his status after placing an order" do
			user.place_order dish

			expect(user.status).to eq('ordered')
		end
	end
end