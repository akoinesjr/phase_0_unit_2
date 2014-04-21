# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode


#Define function "total" that takes array as argument
#	answer=0;
#	FOR element in array
#		ADD current element to answer
#	ENDFOR
#	puts answer
#END

#Define function "sentence_maker" that takes array of string as argument
#  answer=""
#  FOR element in array
#    Add element to answer
#  END FOR
#  return answer
#END


# What is the input?

#The input is the array argument

# What is the output? (i.e. What should the code return?)

#The output is the variable answer, which for the first method is the sum of the values 
#of the elements in the array and for the second is the strings in the array concatenated 
#together.


# What are the steps needed to solve the problem?

#Define the function. Write the loop. Return the answer.


# 2. Initial Solution

#def total(array)
#	answer=0
#	array.each do |x|
#		answer+=x
#	end
#	return answer
#end

#def sentence_maker(array)
#	answer=""
#	array.each do |x|
#		answer+=x+" "
#	end
#	answer+=""
#	#puts answer
#	return answer
#end


# 3. Refactored Solution

#Realized that this could be done more efficiently with inject

def total(array)
	answer=array.inject(0){
		|sum,i| sum+i
	}
	return answer
end

#Failed initially because function did not capitalize the first word and could not
#handle numbers.

def sentence_maker(array)
	answer=""
	array[0]=array[0].capitalize
	array.each do |x|
		x=x.to_s
		answer+=x+" "
	end	
	answer=answer.chop+"."
	return answer
end

sentence_maker(['a','c','dfg dsds'])


# 4. Reflection 

#Sometimes the method that comes to mind first or that you are most familiar 
#with is not the best solution.