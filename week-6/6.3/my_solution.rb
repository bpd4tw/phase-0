# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:First, an integer as an "answer" for the initialize method. Then, in another method, a "guess" input integer
# Output:A symbol for whether our "guess" is high, low or equal to ("correct") the input "answer." Then, a boolean value for whether our "guess" solved the guessing game.
# Steps:First, I'll definine my initialize method and make two instance variables: one for "answer" and the other for "solved." Next, I'll make a "guess" method with comapres the guess input to the answer input using "if." I'll do comparisons for >, <, and =. In each, I'll pint out whether the guess was high, low, or correct and simultaneously adjust the valu of the "solved" instance variable. Lastly, I'll make a final method that returns the boolean value for whether the guessing game was solved correctly or not.


# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      @solved = false
      :high
    elsif @guess < @answer
      @solved = false
      :low
    elsif @guess = @answer
      @solved = true
      :correct
    end
  end

  def solved?
   @solved
  end
end

# Refactored Solution

class GuessingGame
  attr_accessor :solved

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      self.solved = false
      :high
    elsif @guess < @answer
      self.solved = false
      :low
    elsif @guess = @answer
     self.solved = true
      :correct
    end
  end

  def solved?
   self.solved
  end
end

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#Instance variables and methods show how the value of objects depends on the results of different operations. Things are not independant of one another in real life, and the same goes for Ruby code. The results of one operation/action affect many other objects.

# When should you use instance variables? What do they do for you?
#You should use instance variables when using data across methods. Instance variables allow you to store initial inputs and then act on those inputs(objects) throughout a myriad of different methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#We've done it in the past, so it's pretty simple. Be sure to remember that the last line in flow control before "end" has an implicit return value. Also, keep track of "ends." Lastly, don't repeat yourself; only use an "else" clause if necessary.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#Symbols are nice to use in Ruby because they're immutable: once the symbol exists,that's it. That works well here
#because we don't want the returned objects in the "if" conditional to change. Also, symbols are unique in that  you're always looking at a representation of the same object. That works better than a string output. Whenever there are more than one occurences of a string, you're looking at the same string but in two different objects.