# U2.W4: Create Accountability Groups


# I worked on this challenge by myself.

# 2. Pseudocode

#DEFINE function groupCreator that takes array as argument
#	SORT array Randomly
#	FOR each 4 elements
#	 create new array 
#	END FOR
# IF array has less than 4 elements
#   SET counter to zero
#		UNTIL array has zero elements
#			move last element to next array with only 4 elements
#			INCREMENT counter
#		ENDUNTIL
#	END IF
#END

# Input:

#Array of names

# Output:

#Array of arrays of names

# Steps:

#Randomly sort the array
#Check if divisible by four
#If yes, create new arrays of four each from the sorted array
#If no, do as above but add remaining names as fifth group members as necessary

# 3. Initial Solution

def groupCreator(array)
	3.times do
		array.shuffle!
			newArray=array.each_slice(4).to_a
			newArray.each do |x|
				if(x.length<4)
					i=0
					until x.length<=0	
						newArray[i]<<x.pop
						i+=1
					end
					newArray.pop
				end
			end
			p newArray
	end
end

names=["Bridgette Salcido","Matias Meneses","Ariel Fogel","RJ Bernaldo","Jeuel Wilkerson",
	"Amol Borcar","Andrew Koines","Kendall Carey","Kris Shanks","Alec Ashford","Amelia Downs",
	"Ronald Ishak","Gregory White","Danny Glover","Jeff Kynaston","Josh Jeong","Matthew Kuzio",
	"Kirstin Jarchow","Phillip Crawford","Austin Bourdier","Ryan Stack","Scott Jason","Sherwood Callaway",
	"Val Sverdlov","Sapan Bhuta","Britney Valkenburg","Brennon Williams"]
groupCreator(names)

# 4. Refactored Solution





# 1. DRIVER TESTS GO BELOW THIS LINE

if defined?(groupCreator)=="method"
	puts true
else
	"not defined as a method"
end




# 5. Reflection 

#This challenge was very difficult for me. I spent a lot of time on it.
#I figured out relatively quickly how to use each slice to split the array into smaller arrays,
#but it took me a really long time to figure out how to put the remaining elements into
#the existing arrays so that there didn't end up being one very small group.
#Also, I am struggling to figure out how to write working driver test code.
