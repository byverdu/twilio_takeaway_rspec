class User

	attr_reader    :name, :number
	attr_accessor  :my_order, :status

	def initialize(name,number)
		@name     = name
		@number   = number
		@status   = nil
		@my_order = []
	end

	def place_order(*dish)
		@status   = 'ordered'
		
		@my_order << dish
	end
end