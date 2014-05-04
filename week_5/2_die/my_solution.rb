# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

=begin
DEFINE class Die
	DEF initialize function that takes argument labels
 		UNLESS there is at least one side
 			raise an error message
 		END
		declare an instance variable called labels
	END

	DEF sides function
		return the length of labels
	END

	DEF roll function
		find a random number from 1 to the number of elements in labels
		return the element in sides at the index of that random number
	END
END		
=end

# Input: Array of strings
# Output: sides returns the number of sides, roll randomly selects
# from the array of strings
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
	unless labels.length>0
  		raise ArgumentError.new("Input a number!")
  	end
  	@labels=labels
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

Die.instance_method(:initialize).arity==1
Die.new(['a','b','c','d']).sides==4
die=Die.new(['a','b','c','d'])
die.roll=="a"||die.roll=="b"||die.roll=="c"||die.roll=="d"


# 5. Reflection 

# I initially tried to create the roll function using rand from 1 to the length of labels, 
# but this did not work. I then realized I could simply use .sample
