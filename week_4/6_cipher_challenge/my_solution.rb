# U2.W4: Cipher Challenge


# I worked on this challenge with: Kendall Carey



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

=begin
#defines a function that takes the coded message as an argument
def north_korean_cipher(coded_message)
#this part separates the string into an array of lower case characters.
  input = coded_message.downcase.split("") 
#the cypher is a hash whose keys are letter of the alphabet and values are 
#letters of the alphabet, four letters earlier than the key
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
 #it iterates over the array input 

  input.each do |x| # What is #each doing here?
#
   found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#each key iterates over each key
    cipher.each_key do |y| # What is #each_key doing here?
#comparing if the current element equals the current key in the current iteration
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
#pushes the value that corresponds to the current key into the decoded_sentence
        decoded_sentence << cipher[y]
        found_match = true
#exits each_key loop because it found the decoded character and added it to the solution
        break  # Why is it breaking here?
#if the variable is any of these symbols push a space onto the decoded sentence.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
#if the cipher comes across a number, include it as it is in the decoded sentence
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
#if the cypher has not found a match, push the number or symbol as it is
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
#join the elements in the decoded sentence array into a string  
  decoded_sentence = decoded_sentence.join("")
#if there are any number of digits in a row in the decoded sentence 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
#takes the group of digits as one integer and divides by 100
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
     #He's been known to exaggerate...
  end  
#returns the decoded sentence as a string
  return decoded_sentence # What is this returning?        
end
=end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  answer=coded_message.tr('a-z', 'w-zabcdefghijklmnopqrstuv')
  answer=answer.tr('@#$%^&*'," ")
    if answer.match(/\d+/)
      answer.gsub!(/\d+/) { |num| num.to_i / 100 }
    end
  return answer
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection


# We spent a LOT of time working to refactor this code. We knew there was a better way to solve
# it than using a hash, but we struggled to implement an alternative.
# We toyed around with several methods, trying to using .each_byte and .map to change the
# ASCII codes of the characters, using RegEx, etc.
# I think we struggled in part because we had a difficult time trying to envision what a good
# solution would look like and what steps it would take to get there.
# 
#Commenting the original solution out felt tedious, but it was actually an important step
#and without it we probably would have had even more difficulty.

#I learned how to use the .tr method, which turned out to be a great solution in this case.
#I was very excited to finally reach a solution, particularly one that managed to shorten
#the solution function by so much.
 