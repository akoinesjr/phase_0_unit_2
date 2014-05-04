# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

=begin

DEF a class called Die
	DEF initialize function that takes the argument sides
    UNLESS there is at least one side
      raise an error message
    END
		declare an instance variable called sides
	END

	DEF sides function
		returns the number of sides
	END

	DEF roll function
		returns a random number between 1 and the number of sides
	END
END

=end

# Input: An integer
# Output: A random integer from 1 to that integer
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
  	unless sides >0
  		raise ArgumentError.new("Input a number!")
  	end
  	@sides=sides
  end
  
  def sides
  	return @sides
  end
  
  def roll
  	return rand(1..@sides)
  end
end

die = Die.new(6)
die.sides # returns 6
die.roll # returns a random number between 1 and 6


# 4. Refactored Solution

#I can't think of much to refactor.
#The functions much be declared separately, and each is
#quite simple.




# 1. DRIVER TESTS GO BELOW THIS LINE
Die.new(6).sides==6
Die.new(6).roll >=1 && Die.new(6).roll <=6
Die.instance_method(:initialize).arity==1





# 5. Reflection 

#This exercise helped me understand instance variables as they relate to classes
#I still need to practice writing driver test code.