# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
=begin
OPEN definition for class Array.new
	DEF pad method that accepts two arguments, minimum size and optional pad value
		IF the length of the array is less than the minimum size
			PUSH the pad value onto the array until it reaches the minimum size
		END
	END
END definition

=end

# What is the input?
#The array the method is called upon, the new minimum size, and the pad value
# What is the output? (i.e. What should the code return?)
#A new array of the specified length, containing the original array's elements plus elements
#containing the pad value for the remaining elements
# What are the steps needed to solve the problem?


# 2. Initial Solution

class Array
	def pad(minLength,padValue=nil)
		newArray=self.dup
		(minLength-newArray.length).times{
			newArray.push(padValue)
		}
		return newArray
	end

	def pad!(minLength,padValue=nil)
		(minLength-self.length).times{
			self.push(padValue)
		}
		return self
	end
end



# 3. Refactored Solution


# 4. Reflection 

#This was my first time creating a new method for an existing class.
#I read about Ruby Open Classes, and learned that you can add a definition to an
#existing class without overwriting all the preexisting methods.
#Initially, I tried running the code without the .dup method, but it did not work.
#This was my main stumbling block.
#Writing the destructive method was a simpler process.