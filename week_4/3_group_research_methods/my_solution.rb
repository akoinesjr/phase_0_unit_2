# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
	source.map{ |i| i.to_s }.select{|i| i.include? (thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|k,v| v==thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# I used the select method, which returns all elements for which the given block returns true
#I selected all the elements that included the thing_to_find
#I had to modify the array because the integer type elements were causing an error.
#I also had to call .keys on the final hash result because I did not want to include the values.

# Person 2 (Amelia Downs)
def my_array_modification_method(source, thing_to_modify)
  len = source.length; # find the number of elements in the array
  # for each element in the array see if it is a string
  0.upto(len - 1) do |loc|
   # if the element is NOT a string, add thing_to_modify to it
   if source[loc].is_a?(String) === false
   source[loc] += thing_to_modify
   end
  end
  return source
end

  
def my_hash_modification_method(source, thing_to_modify)

source.each {|name, age| source[name] += thing_to_modify}

return source


# Person 3 (Jeff Kynaston)
def my_array_sorting_method(source)
  sortedArray = source.sort_by { |a| a.to_s }
  return sortedArray.uniq!
 end

def my_hash_sorting_method(source)
  sortedHash = source.sort_by { |name,age| age }
  return sortedHash
end



# Person 4 (Phillip Crawford, Jeuel Wilkerson)


def my_array_deletion_method(source, thing_to_delete)

source = source.delete_if {|element| element.class == String && element.include?(thing_to_delete)
}
end


def my_hash_deletion_method(source, thing_to_delete)
source.delete_if {|x, y| x == thing_to_delete }
end



################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# This was somewhat challenging. I am also not sure whether my solution is the best,
#because while I used the .select in both methods, I had to use other methods in
#addition to this one. This leaves me wondering whether there is a simpler solution
#that I have been unable to find so far.
#It is still not always easy for me to find the best method to use in every situation,
#but I feel like I am making progress.