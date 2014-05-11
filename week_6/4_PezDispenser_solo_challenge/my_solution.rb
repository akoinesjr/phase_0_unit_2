# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

=begin

DEF class PezDispenser

	DEF initialize
	END

	DEF create_dispenser function that takes an array, flavors, as an argument
	END

	DEF add_pez function
	END

	DEF pez_count function 
		counts pez remaining
	END

	DEF get_pez function
		Shows which pez was taken out
		Calls pez_count
	END

	DEF see_all_pez function 
		shows all pez in dispenser
	END

END
	
=end

# 3. Initial Solution

class PezDispenser

  def initialize(flavors)
    @flavors=flavors
  end

  def add_pez(flavor)
    @flavors<<flavor
  end

  def pez_count
  	return @flavors.length
  end

  def get_pez
  	puts "You receive a #{@flavors[-1]} pez!"
  	@flavors.pop
  end

  def see_all_pez
  	return @flavors
  end

end
 
papa_smurf=PezDispenser.new(['strawberry','banana','orange'])

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 

#This exercise really helped cement my understanding of how to create a class in Ruby.
#I now have a better understanding of how to create a class that will allow objects of
#that class to have certain attributes and behavior.