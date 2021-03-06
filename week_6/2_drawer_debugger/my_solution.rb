# U2.W6: Drawer Debugger

#I worked on this Challenge with: 
# 1) Osama Zayyad
# 2) Andrew Konies 
# 3) Antonio Perez 


# 2. Original Code

# U2.W6: Drawer Debugger

#I worked on this Challenge with: 
# 1) Osama Zayyad
# 2) Andrew Konies 
# 3) Antonio Perez 


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?
	
	def initialize
		@contents = []
		@open = true
	end
	
	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"			
		@clean = false
	end

  def clean_silverware
    @clean = true
  end

end


knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)

removed_knife.eat

removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...

fork.eat




#BONUS SECTION
puts fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

test=Silverware.new("knife")
drawer=Drawer.new
drawer.add_item(test)
drawer.view_contents

assert{drawer.contents.length==1}
test2=drawer.remove_item(test)
assert{drawer.contents.length==0}



# 5. Reflection 

#For me, the most challenging error to debug was the one regarding
#calling the eat method on fork. It took me a while to figure out
#that the reason it was not working was because the fork
#had not been added to the silverware_drawer.