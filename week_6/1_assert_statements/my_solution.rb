# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

=begin
DEF assert function
	show "assertion failed!" unless the block evaluates to true
END	

DEF name variable and set to "bettysue"
Call assert function with block that checks whether name is equal to "bettysue"
Call assert function with block that checks whether name is equal to "billybob"

=end

# 3. Copy your selected challenge here


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

# 4. Convert your driver test code from that challenge into Assert Statements


def assert
  raise "Assertion failed!" unless yield
end

assert{CreditCard.instance_method(:initialize).arity == 1} 
assert{CreditCard.new(4563960122001999).check_card==true}
assert{CreditCard.new(4563960122001998).check_card==true} #this will raise an error

# 5. Reflection

#This was fairly easy to understand, and the conversion of the driver test code to assert
#statements was a simple matter of defining the assert function and passing each line of test code
#into the block.

#The error message raises a runtime error and shows the string "Assertion failed!" as defined in the
#assert function. It also tells us on what line in IRB the error occurred -- in this case it raises
# an error when the final assert statement is run.
