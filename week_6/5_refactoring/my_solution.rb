# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
=begin

#This is Kris Shanks' solution

class CreditCard
def initialize(card)
raise ArgumentError.new("must be 16") if card.to_s.length != 16
@card = card	
end

def check_card
card_array = @card.to_s.split('')
card_array.map!{|x| x.to_i}
card_array.each_index{|x| card_array[x] = card_array[x]*2 if x.even?}
final_array = []
card_array.each do |x|
if x < 10
final_array << x
else
char_array = x.to_s.split('')
final_array << char_array[0].to_i
final_array << char_array[1].to_i
end
end
sum = 0
final_array.each{|x| sum += x}
return sum%10 == 0? true : false
end

end
=end

# Refactored Solution

class CreditCard
  def initialize(card)
    raise ArgumentError.new("must be 16") if card.to_s.length != 16
    @card = card	
  end

  def check_card
    @card=@card.to_s.split('').map!{|x| x.to_i} 
    @card.each_index{|x| @card[x] *= 2 if x.even?}

    @card=@card.join("").to_s.split("").map{|x| x.to_i}
    sum=@card.inject{|sum,x| x.to_i+sum}
    sum % 10 == 0
  end
end



# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

card = CreditCard.new(4408041234567893)
assert{card.check_card == true}

card2 = CreditCard.new(4408041234567892)
assert{card2.check_card == false}

# Reflection 

#Was able to combine certain lines into a single line.
#There is no need to create a new "card_array" variable, can simply make changes to @card
#Used "x*=2" format rather than "x=x*2"
#The "final_array" is also unnecessary for the same reason