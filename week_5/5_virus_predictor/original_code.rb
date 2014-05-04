# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
#
#require_relative loads a file that is relative to the current file
require_relative 'state_data'

class VirusPredictor


#The initialize method defines several instance variables to be used in each new VirusPredictor
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

#virus_effects calls predicted_deaths and speed_of_spread. Instance variables are available
#within the specific instance, but not outside of it.

#I am not sure how to best refactor this.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end
#methods that follow "private" are private methods and are not accessible by outside objects. 

   private 

   #what is this?  what happens if it were cut and pasted above the virus_effects method
   #If this were located above virus_effects, it would cause an error because virus_effects would
   #be a private method.


#this method determines the amount of deaths that the state called will experience during
#the ourbreak based on its population and population density.
  def predicted_deaths(population_density, population, state)
    case @population_density

    when 0..50
      number_of_deaths = (@population * 0.05).floor
    when 50..100
      number_of_deaths = (@population * 0.1).floor
    when 100..150
      number_of_deaths = (@population * 0.2).floor
    when 150..200
      number_of_deaths = (@population * 0.3).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#this method determined how quickly the virus will spread in the state called based on its
#population density.
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    case @population_density
      when 0..50
        speed += 2.5
      when 50..100
       speed += 2
      when 100..150
        speed += 1.5
      when 150..200
        speed += 1
      else
        speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |k,v|
  currentState=VirusPredictor.new(k,STATE_DATA[k][:population_density],STATE_DATA[k][:population],
    STATE_DATA[k][:region],STATE_DATA[k][:regional_spread])
  currentState.virus_effects
end

#REFLECTION
=begin
I completed this challenge after doing this week's GPS. I was able to create the report
for all 50 states using a method that we used in the GPS, which made this exercise a lot
easier. Had I tried this earlier in the week it probably would have been
significantly more difficult.  
 
=end
  
end