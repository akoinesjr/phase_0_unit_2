# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Andrew Koines
# 2) Kendall Carey

 # This is the file you should end up editing. 
 
 #This file makes a list of pies cakes and cookies
 
#Bakery_num function determines the amount of food and type of food that should be baked
#given a number of people and a favorite food

#Input: Favorite food and number of people
#Output: The number of pies cookies and cakes that should be made based on the number of people

def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  food_quantity = {"pie" => 0, "cake" => 0, "cookie" => 0}
  
#Determine whether fav_food is a key in my_list
# if you type in a food that isn't on the list, it raises an argument error

unless my_list.has_key?(fav_food)
   raise ArgumentError.new("You can't make that food")
end

# takes the value of the favorite food
      fav_food_qty = my_list[fav_food]
#checks whether the number of people is divisible by that value   
    if num_of_people % fav_food_qty == 0
      
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
#if there is a remainder...
    else num_of_people % fav_food_qty != 0
      food_quantity[fav_food] = num_of_people / fav_food_qty
      remaining_people=num_of_people%fav_food_qty
        my_list.each do |k,v|
          if remaining_people / my_list[k] > 0
            food_quantity[k] += remaining_people / my_list[k]
            remaining_people = remaining_people % my_list[k]
          end
        end
      # returns the number of pies, cakes, and cookie that can be made
          return "You need to make #{food_quantity['pie']} pie(s), #{food_quantity['cake']} cake(s), and #{food_quantity['cookie']} cookie(s)."
        end
      end
   end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") # == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 