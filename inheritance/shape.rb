class Shape

	def initialize(size, color)
		@size = size
		@color = color
	end

	def definition
		puts "The shape has a #{@size} size, and is #{@color}"
	end

	def change_color
		puts "what color would you like to change to?"
		@color = gets.chomp
		puts "The new color is #{@color}"
	end

end
