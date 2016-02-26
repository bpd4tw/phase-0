#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:New instance of a class.
# Output:Method output from once class within another.
# Steps:I'll need to make a method within name data that prints my name. Next, I'll set an initialize method within
#greetings to  create an instance variable with that name message. Last, I'll create another method within greetings that will combine a string phrase with the name output.

class NameData
  def name
    "Brian"
  end
end


class Greetings
  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hey there #{@name_data.name}! Hope all is well."
  end
end

greeting = Greetings.new
greeting.hello



# # Reflection
#Release 1
# What are these methods doing?
#In release 1, the methods are writer methods that are changing the values of the input. The data is being molded to return different outputs depending on how a user changes the values.
# How are they modifying or returning the value of instance variables?
#Like I mentioned, they're modifying the value of the instance variables through writer methods. Using the syntax of "=(value)" allows us to change the instance variables stored value.

# #Release 2
# What changed between the last release and this release?
#We've now changed the method "what_is_age" to a reader attribute.Output is still the same.
# What was replaced?
#"What_is_age method has been commented out and replaced with a reader attribute of the same name"
# Is this code simpler than the last?
#Yes, much simplet. It is more DRY and saves on lines.

# Release 3
#What changed between the last release and this release?
#We've now commented out the method for change_my_name
#What was replaced?
#The method change_my_name was replaced with a writer attribute at the top of the class code.
#Is this code simpler than the last?
#Yes. Same as the reader method we used before, the writer method saves on space.

# #Final Reflection
# What is a reader method?
#A reader method is a Ruby attribute wrapped around an instance variable. It shortens the code needed for a developer to declare an instance variable. Instead of writing the method for the instance variable, a simple line is just needed atop the class code.
# What is a writer method?
#A writer is just like a reader method except it is an attribute that holds the place for ruby methods that "write." Whenever a developer wants a method in a class code that can chance the value of an instance variable upon being called, they can decide to use a writer method.
# What do the attr methods do for you?
#Attribute methods shorten code and also prevent writing over the value of instance variables. They are short hand configurations of methods and isntance variables to save on space.
# Should you always use an accessor to cover your bases? Why or why not?
#No, you shouldn't always use an accessor. Although it may seem like a sound idea, it can create messy code. Often, classes will be imbeded within one another. If we only use accessors, sometimes it can affect more than one class if that attribute should have just been a reader/writer.It's sound Ruby practice not only for trinkle down effects, but also for cyber security. You don't want all of your code intertwined if it's not necessary.
# What is confusing to you about these methods?
#I understand the concepts behind them, it just take some practice getting used to them. I sometimes need to go over in my head all the different attr_ methods I've used and whether or not I need more/less of them in my code.