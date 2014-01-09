require './shape'

class Rectangle < Shape

	def initialize(size, color, w_size, l_size)
		super(size,color)
		@w_size = w_size
		@l_size = l_size
	end

	def definition
		super
		puts "The shape is a rectangle that is #{@w_size}wide, and #{@l_size}long."
	end


end
