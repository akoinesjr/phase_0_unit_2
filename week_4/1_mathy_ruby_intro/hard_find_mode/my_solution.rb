# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

#DEF function "mode" that takes an array as an argument
# SET variable "count" to an empty hash
#
# FOR each element in array
# 	Increment the value of the element key in the hash by one
# ENDFOR
#
# SET variable mode_array to an empty array
#
# FOR each element in the hash
# 	IF the value is the highest value in the high
# 		push the corresponding key to mode_array
# ENDFOR
#
# SORT mode_array
#
#END


# What is the input?

#An array of numbers

# What is the output? (i.e. What should the code return?)

#The mode.

# What are the steps needed to solve the problem?

#Determine how to count the instances of each number in the array
#Create the loop to do this
#Check to see which value was found the most times and return which one it is

# 2. Initial Solution

def mode(array)

count=Hash.new(0)

array.each do |x|
  count[x]+=1
end

mode_array=[]

count.each do |k,v|
    if v == count.values.max
        mode_array<<k
    end
end

mode_array.sort

end


# 3. Refactored Solution

#This solution worked and I do not see a way to improve it.


# 4. Reflection 

#Solving this problem was somewhat challenging as I had to determine how to
#use a hash to count the instances of each number in the array, and then later
#access these values based on certain criteria.