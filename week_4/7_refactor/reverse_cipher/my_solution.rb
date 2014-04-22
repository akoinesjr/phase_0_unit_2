# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #define a function that takes a sentence as an argument
    alphabet = ('a'..'z').to_a #create an array of the letters a to z and set it as the variable alphabet
#Creates a variable cipher that is a hash that takes the alphabet array, rotated around the 4th character, and then  
#converts that to an a new array   
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] 
 #Created a variable spaces that is an array of the symbols that should be converted to spaces 
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
#Creates a variable that is the lower case version of the original sentence    
    original_sentence = sentence.downcase
#Creates an empty array
    encoded_sentence = []
#Iterates over each character in the original sentence
    original_sentence.each_char do |element|
#If the cipher includes that character
      if cipher.include?(element)
#Push it onto the encoded sentence
        encoded_sentence << cipher[element]
#Or, if there is a space
      elsif element == ' '
#Push on a random character from spaces
        encoded_sentence << spaces.sample
#Or, push on the character
      else 
        encoded_sentence << element
      end
     end
 #Return the encoded sentence   
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? 
#Converting the letters to an array
# 2. How does the rotate method work? What does it work on? 
#It rotates the array in place so that the element at the index of the argument passed comes first.
# 3. What is `each_char` doing?
#It iterates over each character
# 4. What does `sample` do?
#It chooses a random element(s) from the array
# 5. Are there any other methods you want to understand better?
#Yes, .map
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
#Worse. Mine is much shorter. 
# 7. Is this good code? What makes it good? What makes it bad?
#Yes, it is good because it uses describe variable names.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


#No it does not, because the spaces are translated into random symbols.


# 5. Reflection 

#This was an interesting exercise, because it showed how to do a similar (but opposite) task
#using completely different methods from those that were previously used.
#Also, this was my first time seeing the zip, sample, and rotate methods.
