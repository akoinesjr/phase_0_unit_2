# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

=begin
DEF class GuessingGame
	DEF initialize function that takes argument guess
	END

	set the solved property to false
	
	DEF guess function that takes number as argument
		IF number equals guess
			return :correct
			set solved property to true
		ELSE IF number > guess
			return :high
			set solved property to false
		ELSE
			return :low
			set solves property to false
		END
	END

END	
=end

# Input: integer variable guess
# Output: returns symbol :high, :correct, or :low
# Steps: 


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
  end

  def guess(guess)
    @guess=guess
    if @guess > @answer
      @solved=:high
    elsif @guess<@answer 
    	@solved=:low
    else
    	@solved=:correct
    end
  end

  def solved?
    if @solved==:correct
      return true
    else
      return false
    end
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

newGuess=GuessingGame.new(11)
newGuess.guess(10)==:low
newGuess.guess(11)==:correct
newGuess.guess(12)==:high




# 5. Reflection 

#My solution to this exercise seems quite simple looking back on it, but
#it took me a fair amount of time to reach it as I am still
#getting used to working with classes and instance variables.
