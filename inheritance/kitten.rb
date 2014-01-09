require './animal'
require './cat'



class Kitten < Cat
	def initialize(age, gender, name, fur_color)
		@fur_color = fur_color
	end
end
