
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with:Wes ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array_of_numbers
# Output: sum_of_numbers
# Steps to solve the problem.
 #define total (sum_of_numbers)
  #make a variable called sum, set it equal to 0
  #iterate over .each |value| in sum_of_numbers
    #sum =  value + sum
  #end
  #return sum
 #end

# 1. total initial solution
def total(sum_of_numbers)
  sum = 0
  sum_of_numbers.each do |value|
    sum = value + sum
  end
  return sum
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array_of_strings
# Output: combined_strings
# Steps to solve the problem.
#define sentence_maker(array_of_strings)
  #define sentence as a variable equal to ""
  #iterate over array_of_strings and each |piece| is added to sentence
    #capitalize the first string and insert a period after the last
    #add each iteration to sentence
  #end
  #p sentence + "."
#end


# 5. sentence_maker initial solution
def sentence_maker(array_of_strings)
  sentence = ""
  array_of_strings.each do |piece|
    if piece != array_of_strings[0] && piece != array_of_strings.last
      sentence = sentence + piece.to_s + " "
    end
  end
  return array_of_strings[0].capitalize.to_s + " " + sentence + array_of_strings.last.to_s + "."
end


# 6. sentence_maker refactored solution