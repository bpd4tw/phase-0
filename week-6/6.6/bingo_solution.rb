# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline: First, I'll need an initialize method that accepts a "board" array as input. If a row doesn't equal five, an Argument Error should arrise. Next, I'll create a call method that pick a random letter from "BINGO" and a random number in a given range. It'll take both and print the result. Then, I'll create a check method. This will take the values from the call method and see if any number on the board matches the result from the call. If there is a match, I'll replace the number with an "X." Lastly, I'll create a display method that displays the board to the console. It should display "X"s marked on the board, and should save the "X"s.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Use .sample on an array of "BINGO" and rand(1..9) to generate random numbers

# Check the called column for the number called.
  #Use an "if" statement for if the call has a certain letter. Then iterate over the bingo_board using .map.

# If the number is in the column, replace with an 'x'
  #If the specific index (when iterated over) matches the call number, then replace the specific index with an "X"

# Display the board to the console (prettily)
  #Puts "BINGO" and nine "-". Then, iterate over the input board, then iterate over the nested arrays and "puts" them to the console.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_board.each do|row|
      if row.length > 5 || row.length < 5
       raise ArgumentError, "Row input must be 5 integers!"
      end
    end
  end

  def call
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..99)
    p @call = "Mark #{@letter}#{@number}!"
  end

  def check
    if @letter == "B"
      @bingo_board.map do |row|
        if row[0] == @number
          row[0] = "X"
        else
          row[0]
        end
      end
    end

   if @letter == "I"
      @bingo_board.map do |row|
        if row[1] == @number
          row[1] = "X"
        else
          row[1]
        end
      end
    end

    if @letter == "N"
      @bingo_board.map do |row|
        if row[2] == @number
          row[2] = "X"
        else
          row[2]
        end
      end
    end

    if @letter == "G"
      @bingo_board.map do |row|
        if row[3] == @number
          row[3] = "X"
        else
          row[3]
        end
      end
    end

   if @letter == "O"
      @bingo_board.map do |row|
        if row[4] == @number
          row[4] = "X"
        else
          row[4]
        end
      end
    end
  end

  def display
    @bingo_board.unshift(["B", "I", "N", "G", "O"], ("-"*9))
    @bingo_board.each do |nested_array|
        puts nested_array.each { |x| x }.join(" ")
     end
  end
  end


# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_board.each do|row|
      if row.length != 5
       raise ArgumentError, "Row input must be 5 integers!"
      end
    end
  end

  def call
    # call = BingoCall.new
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..99)
    p @call = "Mark #{@letter}#{@number}!"
  end

  def check
    if @letter == "B"
      @bingo_board.map do |row|
       row[0] = "X" if row[0] == @number
      end
    end

    if @letter == "I"
      @bingo_board.map do |row|
       row[1] = "X" if row[1] == @number
      end
    end

    if @letter == "N"
      @bingo_board.map do |row|
       row[2] = "X" if row[2] == @number
      end
    end

    if @letter == "G"
      @bingo_board.map do |row|
      row[3] = "X" if row[3] == @number
      end
    end

    if @letter == "O"
      @bingo_board.map do |row|
      row[4] = "X" if row[4] == @number
      end
    end
  end

  def display
    puts "B I N G O"
    puts"---------"
    @bingo_board.each do |nested_array|
        puts nested_array.each { |x| x }.join(" ")
     end
   end
  end

#   class BingoCall
#     def letter
#     ["B", "I", "N", "G", "O"].sample
#     end

#     def number
#       rand(1..9)
#     end
#   end
# end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[12, 29, 88, 45, 83],
        [29, 61, 76, 64, 72],
        [85, 82, 16, 84, 51],
        [44, 32, 94, 22, 17],
        [72, 73, 53, 59, 91]]

new_game = BingoBoard.new(board)
5.times do
new_game.call
puts
new_game.check
puts
new_game.display
end

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#It wasn't actually too bad pseudocing this challenge. It was nice to have the instructions broken down on canvas. I simply went method by method for what needed to be done. In terms of my own pseudocode style, I think it's alright. I'm trying to work on it and use more keywords like "if" and "else."

# What are the benefits of using a class for this challenge?
#A Class allows our methods to interact with each other. Once we create an instance of a bingo board, the class allows us to wrap all of the different operations we want to utilize into a package.

# How can you access coordinates in a nested array?
#You can access coordinates in a nested array by followign a cascading style. You would type the name of the array first. Then, you'll select which first order array you want to select (array.[1]) for example. Next, pick the second order array you want (array.[1][0]), and continue on in this manner for however deep you'd like to dive.

# What methods did you use to access and modify the array?
#I used to map to iterate over the array and return a modified version as my output.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#While looking over the Ruby docs, I came across .chunk. The method chunks together inputs based on the return values. So if you wanted to see whether some integers in an array return true if they are even, you can use .chunk. The method then gives you blocks of the integers, in order, for whether they are true or false.

# How did you determine what should be an instance variable versus a local variable?
#I used instance variables whenever I knew I'd be passing data between methods in my class. I used local when the data would simply stay put in a given class.

# What do you feel is most improved in your refactored solution?
#I improved my argument error, simplified my "if" statements in the check method and cleaned up the display method. I wish I could have found a way to combine all my "if" statements, though. I tried a myriad of ways, like implementing a hash, so that I didn't have to repeat myself as much. Also, I commented out some code I tinkered around with that would have made my call method into a class.
