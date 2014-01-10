#Title: Gluten Free

#Prerequisites:
#- Ruby
#    - Exceptions
#    - Hashes & Arrays
#    - Objects & Classes

#Objectives:
#- Work with exceptions, classes, class variables, conditions

"======================================================================"

# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.


require 'pry'




class Person
attr_accessor :stomach, :allergies

	def initialize(stomach = [], allergies=[]) #syntax error on initialize
		@stomach = stomach
		@allergies = allergies
	end

	def eat(food)
		
		if (food & @allergies) != []
			@stomach += food 
			allergies_free = @stomach - @allergies
			binding.pry
			puts "Error"
			#reject the food -> remove it from the array and then push the rest to stomach
		else
			@stomach += food 
			# stomach_string = stomach.join(", ")
			puts "you have #{stomach.join(", ")} in your stomach"
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
chris.eat(pizza)  #should cause error because he's allergic to glutten (allergy error)

beth = Person.new





# When a person attempts to eat a food they are allergic to, raise a custom exception
# For example:  AllergyError


# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exception