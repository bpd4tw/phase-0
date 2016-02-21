# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode
# Input:integers for sides of the dice
# Output:either the sides of the dice that were entered with some message or a random number between 1 and the number of sides.
# Steps:
#I'll need to create a class with an initialize method and then two more. One will have an instance variable for the number of sides on the dice. The other will have a "random" built in Ruby method for choosing a number between 1 and the sides of the dice. Lasty, I'll make sure a number less than 1 isn't accepted.


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides<1
      raise ArgumentError.new("Only whole numbers greater than 1 will be accepted")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    Random.new.rand(1..@sides)
  end
end

bri_die = Die.new(8)
puts bri_die.roll


# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides<1
      raise ArgumentError.new("Only whole numbers greater than 1 will be accepted")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

bri_die = Die.new(8)
puts bri_die.roll


# 4. Reflection
#What is an ArgumentError and why would you use one?
#An argument error arises when the argument passed into a class/method does not fulfill the Ruby requirements for an argument. Normally, this occurs when there are more/less arguments entered for the given parameters. In our case, we wanted an ArgumentError to occur so that users of the Die class know no number under 1 will be accepted.

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#I had never used the .rand Ruby method. It wasn't necessarily challenging, but I did need to check it out in the Ruby docs. I also found a shorter way of implementing it in my refactored code.

#What is a Ruby class?
#Defining a Ruby class allows a developer to group methods into bundles so that their objects can be assigned to certain classes and operate in the same manner. Everything we handle in Ruby is an object or a construct that evaluates to an object, and every object is an instance of a class. Every class cosists of a collection of method definitions that we can use to manipulate an object.

#Why would you use a Ruby class?
#Like a alluded to above, Ruby classes allow developers to bundle objects into groupings that essentially operate in the same ways. Classes then provide us with methods (which we can build ourselves) that further enable a developer to act upon certain objects.

#What is the difference between a local variable and an instance variable?
#Instance variables and local variables are similar in that they both are placeholders for data in Ruby. They anable individual objects to remember state. A developer assigns them values and they read them back. You can act on variables, too, through adding, subtracting, printing, etc.
#However, they are quite different. For starters, instance variables always start with one @ sign. Also, instance variables are only visible to the objects to which they belong. Lastly, an instance variable initialized in one method inside a class can be used by any method defined within that class. A local variable is restricted solely to the method it is contained within.

#Where can an instance variable be used?
#I answered this question above, but I'll repeat it again: instance variables initialized in one method inside a class can be used by any method defined within that class.