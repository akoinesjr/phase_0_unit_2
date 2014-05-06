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

class CreditCard
  def initialize(number)
    @number = number.to_s.split("").map {|x| x.to_i}
    raise ArgumentError, "Card number must be 16 digits long!" if @number.length != 16
  end

  def check_card
    @number.each_index do |x|
      @number[x] *= 2 if x % 2 == 0
    end
    @number=@number.join("").to_s.split("").map{|x| x.to_i}
    sum=@number.inject{|sum,x| x.to_i+sum}
    if sum % 10 == 0
      return true
    else
      return false
    end
  end

end

card=CreditCard.new(4563960122001999)
puts card.check_card

# 1. DRIVER TESTS GO BELOW THIS LINE

CreditCard.instance_method(:initialize).arity == 1
CreditCard.new(4563960122001999).check_card==true
CreditCard.new(4563960122001998).check_card==false





# 5. Reflection 

#Initial solution worked but did not create a class. The refactored solution accomplishes this.
#Also, initially I was created a second array for the solution, but this was unnecessary,
#so I removed it to DRY out the code.

