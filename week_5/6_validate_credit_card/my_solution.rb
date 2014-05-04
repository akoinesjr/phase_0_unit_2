# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

=begin
DEF class CreditCard that takes an integer cardNumber
as an argument
	DEF initialize
		UNLESS the card length is 16
			raise argument error
		END
	END

	DEF check_card
	
	END

END


def cardChecker(num)
  arr=num.to_s.split("").reverse
  arr2=[]
  arr.each_with_index do |x,idx|
    if idx%2!=0
      arr2<<x.to_i*2 
    else
      arr2<<x.to_i
    end
  end
  #puts arr2.reverse! the multiplication is now done
  arr2=arr2.reverse.join("").split("")
  arr2.map!{|s| s.to_i}
  #now sum the individual digits
  sum=arr2.inject{|sum,x| x.to_i+sum}
  #then sum%10==0?
  if sum%10==0
  	return true 
  else
  	return false
  end
end


=end

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


def cardChecker(num)
  arr=num.to_s.split("").reverse
  arr2=[]
  arr.each_with_index do |x,idx|
    if idx%2!=0
      arr2<<x.to_i*2 
    else
      arr2<<x.to_i
    end
  end
  #puts arr2.reverse! the multiplication is now done
  arr2=arr2.reverse.join("").split("")
  arr2.map!{|s| s.to_i}
  #now sum the individual digits
  sum=arr2.inject{|sum,x| x.to_i+sum}
  #then sum%10==0?
  if sum%10==0
    return true 
  else
    return false
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

#This solution works but it is not a class, so it still needs to be refactored.

