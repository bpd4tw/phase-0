# Your Names
# 1)Kevin Fowle
# 2)Brian Donahue

# We spent [#1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  servings = num_of_ingredients / serving_size
  output = "Calculations complete: Make #{servings} of #{item_to_make}"

  return output if remaining_ingredients == 0
  return output + ", you have #{remaining_ingredients} leftover ingredients."
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
#What did you learn about making code readable by working on this challenge?
#Making code readable is a vital part of coding. Without it, it's hard to
#do anything when it comes to refactoring. I learned that I don't really need to use "if" statements.
#Instead, I can rely on implicit returns for my code blocks and save space.

#Did you learn any new methods? What did you learn about them?
#I didn't learn any new methods, but I did learn the different ways to ask for
#a false value, through "==false," "!" before a hash/array that you're using methods on, or
#"unless."

#What did you learn about accessing data in hashes?
#I learned to just keep it simple. The code originally was using "values_at" to get the values of a given key.
#Instead, just call upon the key within the hash, like library[key].

#What concepts were solidified when working through this challenge?
#Working with hashes through "if" statements was definitely solidified.
#Also, proper refactoring was another area that was helpfully harped upon.