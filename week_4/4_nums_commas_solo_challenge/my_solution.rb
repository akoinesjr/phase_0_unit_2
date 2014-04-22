# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

#DEFINE a function that takes an argument "num" that is an integer
#	IF the length of num is 3 or less
#		RETURN num
#	ELSE
#			ADD a "," before the 3rd, 6th, 9th, etc. characters from the end of num
#     RETURN num
#	END

#END

# What is the input?

#The input is an an integer

# What is the output? (i.e. What should the code return?)

#The output is the integer, properly formatted with commas.

# What are the steps needed to solve the problem?

#Determine whether the integer is long enough to require commas
#If it is, insert a comma before the final three characters, and every three back
#before that until reach its beginning.

# 2. Initial Solution

def seperate_comma(num)
	if num<1000
		p num
		return num
	else
		num=num.to_s.split("")
		num.insert(-4,",")
		num=num.join("")
		p num
		return num
	end
end

seperate_comma(333)

# 3. Refactored Solution

#I know that this can probably be done with RegEx, but I don't fully understand how to do this yet.


# 4. Reflection 