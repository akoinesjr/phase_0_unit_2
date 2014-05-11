# U2.W6: Create a BoggleBoard Class


# I worked on this challenge 
#  Amelia Downs
#  Andrew Koines

# 2. Pseudocode

=begin

DEF initialize function
  Define instance variable called dice_grid
END

DEF get_row function
  Return row
END

DEF get_col function
  Return col
END

=end

# 3. Initial Solution
# class BoggleBoard
# def initialize(dice_grid)
#   @dice_grid=dice_grid
# end
 
# def create_word(*coords)
#   word=""
#   coords.each{|x| word+=@dice_grid[x[0]][x[1]]}
#   return word
# end
 
# def get_row(row)
#   row_string=""
#   @dice_grid[row].each {|col| row_string += col}
#   return row_string
# end
 
# def get_col(col)
#   column_string=""
#   @dice_grid.each {|row| column_string+= row[col]}
#   return column_string
# end
 
# end
 
# dice_grid = [["b", "r", "a", "e"],
#             ["i", "o", "d", "t"],
#             ["e", "c", "l", "r"],
#             ["t", "a", "k", "e"]]
 
# 4. Refactored Solution
class BoggleBoard
 def initialize(dice_grid)
   @dice_grid=dice_grid
 end
 
 def create_word(*coords)
   word=""
   coords.each{|x| word+=@dice_grid[x[0]][x[1]]}
   return word
 end
 
 def get_row(row)
    unless row >= @dice_grid.length
      return @dice_grid[row].join("")
    end
 end
 
 def get_col(col)
   unless col >= @dice_grid[0].length
     column_string=""
     @dice_grid.each {|row| column_string+= row[col]}
     return column_string
   end
 end
 
 # define method get_diagonal that takes two args, coord1 coord2
 # make sure the difference between the x values of both are 
 # the same as the y values of both
 # if y2 > y1 diag. going up
 # start at coord with lowest x value
 # iterate, adding 1 to x each time, and if y1>y2 then subtract from y
 # else add to y until  x1 == x2 && y1 == y2           
=begin
 def get_diagonal(coord1, coord2)
   unless (((coord1[0] - coord2[0]).abs) != ((coord1[1] - coord2[1]).abs))
     
     if (coord1[0] > coord2[0])
       start_coord = coord2
       end_coord = coord1
     else
       start_coord = coord1
       end_coord = coord2
     end
     
     diagonal = []
     
     len=(start_coord[0]-end_coord[0]).abs + 1
     len.times do |x|
       nxt_add = 0+x
       if coord1[1] > coord2[1]
         nxt_sub = 0-x
        diagonal << @dice_grid[start_coord[nxt_add]][start_coord[nxt_sub]]
       else
        diagonal << @dice_grid[start_coord[nxt_add]][start_coord[nxt_add]]
       end
     end

      return diagonal
   end
=end
 end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

boggle_board = BoggleBoard.new(dice_grid)

dice_grid.length.times {|i| puts boggle_board.get_row(i)
                            puts boggle_board.get_col(i)} 

def assert
  raise "Assertion failed!" unless yield
end

assert {boggle_board.create_word([0,0],[0,1],[0,2]) == "bra"}
assert {boggle_board.create_word([3,2]) == "k"}
puts boggle_board.get_diagonal([0,0], [1,1])

#puts boggle_board.create_word([0,0],[0,1],[0,2])
#puts boggle_board.create_word([3,2])

#List of 8 words
=begin
brae
biet
iodt
roca
eclr
adlk
take
etre
=end

# 5. Reflection 

#This was an interesting exercise. We worked on creating the get_diagonal bonus method,
#but were not quite able to get it to work. 