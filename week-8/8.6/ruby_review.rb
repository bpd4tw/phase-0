# I worked on this challenge [by myself].
# This challenge took me [.5] hours.


# Pseudocode
# iterate overthe array using .each or .map
#use if and elsif statements with a modulo operator
#test the divisibility with modulo of 15, 5 and 3 for == 0
#if it's true, replace number with "fizz", "buzz" or "fizzbuzz"
#else, puts just the number


# Initial Solution

# def super_fizzbuzz(array)
#   array.map! do |number|
#     if number % 15 == 0
#       number = "FizzBuzz"
#     elsif number % 5 == 0
#       number = "Buzz"
#     elsif number % 3 == 0
#       number = "Fizz"
#       else
#         number
#     end
#   end
# end

# array = [3, 5, 15, 10, 9, 4, 45]

# Refactored Solution

def fizzbuz(array)
  array.each do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      else
        puts i
      end
    end
end

# # Reflection
# What concepts did you review or learn in this challenge?
# I reviewed iteration and using modulo. It was a nice review for using if/elsif when
# a certain condition returns true

# What is still confusing to you about Ruby?
# I still need a bit of work using ruby doc methods that can further simplify my code

# What are you going to study to get more prepared for Phase 1?
#Implementing more DRY Ruby methods form the docs. Also, it's unrelated here, but working with nested arrays