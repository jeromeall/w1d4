require './animal'

# class Subclass < SuperClass
# the '<' means inherit from

class Cat < Animal

	def initialize(age, gender, name)
		@age = age
		@gender = gender
		@name = name
	end
	
end