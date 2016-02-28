
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with:Alana Farkas ].
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input:16 individual integers, first intered as one whole integer
# Output:Boolean value true or false for if our card solution returns 0 when % 10
# Steps: First, in our initialize method, we'll take our integer input and convert it into a string in order to split it into individual integers. Then, we'll convert those integers from a string back into integers. Lastly for initialize, we'll set the code to raise an argument error if 16 integers are not entered as input. Now, we'll create 4 more methods: Even, odd, sum and check card. Even will be straightforward: we'll iterate over even indices and push them into a new empty array. For the odds, we'll iterate over the odd indices, double them, and push them to an array. Then, we'll use .split on the odds array and flatten the array so that double digit numbers are now seperated form one another as single integers.  We'll now move to the sum method. This will add the even and odd array together and then add all the elements within the new sum array as well. Lastly, we'll create the check_card method. This will return true if the sum integer is cleanly divisible by 10 (divisible by ten with no remainder) and false otherwise.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(number)
#     @number = number.to_s.split(//).reverse!
#     @number.map! do |x|
#         x.to_i
#     end

#     @number

#     raise ArgumentError, "Input needs to have a length of 16 integers" unless @number.count == 16
#   end


#   def even
#     @even_array = []
#     @number.each_with_index do |number, index|
#       if index % 2 == 0
#         @even_array.push(number)
#       end
#     end
#     p @even_array
#   end


#   def odd
#     @odd_array = []
#     @number.each_with_index do |number, index|
#       if index % 2 != 0
#          @odd_array.push(number*2)
#       end
#        @odd_array
#     end

#     @odd_array.map! do |number|
#       number.to_s.split(//)
#     end
#     @odd_array.flatten!
#     @odd_array.map! do |number|
#       number.to_i
#     end
#     p @odd_array
#   end

#   def add
#     @even_array << @odd_array
#     @even_array.flatten!
#     @sum = @even_array.inject(:+)
#     p @sum
#   end


#   def check_card
#     if @sum % 10 == 0
#       p true
#       else
#       p false
#     end
#   end


# end

# Refactored Solution

class CreditCard

  def initialize(number)
    @number = number.to_s.split(//).reverse!
    @number.map! do |x|
        x.to_i
    end
    @number
    raise ArgumentError, "Input needs to have a length of 16 integers" unless @number.count == 16
  end


  def evens
    even_array = []
    @number.each_with_index do |number, index|
      if index % 2 == 0
        even_array.push(number)
      end
    end
    even_array
  end


  def odds
    odd_array = []
    @number.each_with_index do |number, index|
      if index % 2 != 0
         odd_array.push(number*2)
      end
       odd_array
    end

    odd_array.map! do |number|
      number.to_s.split(//)
    end
    odd_array.flatten!
    odd_array.map! do |number|
      number.to_i
    end
    odd_array
  end


  def sum
    evens.concat(odds).inject(:+)
  end


  def check_card
    if sum % 10 == 0
      true
    else
      false
    end
  end
end

# Reflection
#What was the most difficult part of this challenge for you and your pair?
#My pair and I sometimes struggled with instance variables. We made too many in our intial solution which caused problems with our code. It also took us sometime to figure our how to "split" the double digit odd indexed integers and add the values together.
#What new methods did you find to help you when you refactored?
#.concat was a great new method that we used when refactoring. It saved us a bunch of code lines and allowed us to avoid having to flatten our summed array.
#What concepts or learnings were you able to solidify in this challenge?
#We were able to solidify creating multiple methods in a class and having them interact with one another. Also, it was a nice refresher on iteration and doing some unique things with our arrays like flattening and splitting.