require "takeaway"

describe Takeaway do

	let(:takeaway) { Takeaway.new('Casa Ramiro', '07730879056') }

	it "has his own name" do
		expect(takeaway.name).to eq('Casa Ramiro')
	end

	it "has a telephone number" do
		expect(takeaway.number).to eq('07730879056')
	end
  
end