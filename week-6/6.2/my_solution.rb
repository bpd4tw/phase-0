# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with:Andrew Larson ].
# I spent [3] hours on this challenge.

# Pseudocode

# Input:array of strings
# Output:either raise an error if the array is empty, the sides (length of the array), or a random value from the array
# Steps:I'll need to first account for the array being zero and use an "if" statement for the argument error. Then, I'll need to have the sides (array length) return when a new Die instance is created. Then, I'll need to fill in both the "sides" method and "roll" method. For the "roll" method, I'll be sure to use .sample to get a random array value returned as my result.


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.length
    if @labels.empty?
      raise ArgumentError.new("Only whole numbers greater than 1 will be accepted")
    end
  end

  def sides
   @sides
  end

  def roll
    @labels.sample
  end
end


my_die = Die.new([1,2,3])
p my_die.sides
p my_die.roll

# Refactored Solution

class Die
  attr_reader :@sides
  def initialize(labels)
    @labels = labels
    @sides = labels.length
    if @labels.empty?
      raise ArgumentError.new("Only whole numbers greater than 1 will be accepted")
    end
  end

  def roll
    @labels.sample
  end
end


my_die = Die.new([1,2,3])
p my_die.sides
p my_die.roll

# # Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work? It really came down to dealing with an input of an  array versus integers. I had to make sure I accounted for the array and had the proper methods to interact with it.

# What does this exercise teach you about making code that is easily changeable or modifiable?
#It just shows how much easier it is to work on a program when you have a base template set up like we did last week.
# What new methods did you learn when working on this challenge, if any?
#I had never used .sample before. That's a nice one to ave in the back pocket.

# What concepts about classes were you able to solidify in this challenge?
#I went to office hours to get through this one, so Andrew went above and beyond and explained
#attr_* methods to me. He showed me how I could have used attr_reader for @sides.