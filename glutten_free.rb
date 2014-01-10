#Title: Gluten Free

#Prerequisites:
#- Ruby
#    - Exceptions
#    - Hashes & Arrays
#    - Objects & Classes

#Objectives:
#- Work with exceptions, classes, class variables, conditions

"======================================================================"

# If a food array contains a known allergy reject the food.


require 'pry' # Require pry to use binding.pry

class AllergyError < RuntimeError; end # Create subclass of RuntimeError so that it can inherit from it




# Create a Person class. A person will have a stomach and allergies
class Person
attr_accessor :stomach, :allergies

	# initialize the empty arrays for stomach(stores food), and allergies 
	def initialize(stomach = [], allergies=[])  
		@stomach = stomach				# using arrays to do set comparisons
		@allergies = allergies			
	end

	# create method to eat food, and has allergies 
	# the method takes an array of food items
	def eat(food)
		
		# When a person attempts to eat a food they are allergic to, raise a custom exception
		# Bonus: When a person attempts to eat a food they are allergic to,
		# ... remove ALL the food from the person's stomach before raising the exception
		# For example:  AllergyError
		
		# Begin Exception code
		begin  			

			if (food & @allergies) != [] 	#If intersection of food and allergies arrays is not empty
				@stomach = []	# empty the stomach
				raise AllergyError.new("You are allergic to this food.")  # Call custom error method to input custom method
			else
				@stomach += food 	# if no allergies, then add food elements into stomach array
				puts "You have #{stomach.join(", ")} in your stomach" 	# tells user what foods are in their stomach
			end

			# When rescuing, add only ingredients not allergic to, into stomach
			rescue AllergyError => err 	# Instead of quitting when custom error is called, run the following code
			puts "#{err}"	# first print the error message from custom error
			@stomach += food 	# add food items to stomach
			@stomach -= @allergies	#remove food that cause allergies
			puts "Ewww, somehow you threw up everything but the #{@stomach.join(", ")}."	# tells user what foods are in their stomach
		end
	end
end


# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

chris = Person.new([], ["gluten"]) 
chris.eat(water)
chris.eat(pizza)
chris.eat(pan_seared_scallops)
 

beth = Person.new([],["scallops"])
beth.eat(pan_seared_scallops)
beth.eat(pizza)
beth.eat(water)





