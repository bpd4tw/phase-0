# Calculate the mode Pairing Challenge

# I worked on this challenge [with:Emily ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
 def mode(array)
    new_hash = Hash.new(0)
    array.each {|x| new_hash[x]+=1}
    frequent_array=[]
    new_hash.each do |x, value|
      if value == new_hash.values.max
        frequent_array << x
      end
    end
    frequent_array
 end



# 3. Refactored Solution
#We didn't find any helpful Ruby methods for refactoring. We thought about trying .inject, but the code would have ended up sloppier in the end.



# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
#We decided to change the input array into a hash. While arrays are useful for holding objects, they don't do a great job of keeping track of object frequency. With the hash, we could just increase the value of the numbers each time they appeared in the array. We just changed the numbers from values in the array into the keys for our hash.
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? Yes. My partner was good at writing psuedocode and did a nice job of breaking our challenge into step by step elements.

#What issues/successes did you run into when translating your pseudocode to code?
#The most difficult portion fo this challenge was turning an array value in a hash key. We also had to look up a fair bit of Ruby methods until we discovered "value" and realized we could pair it with "max."

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? We stuck to .each for iterating in this challenge. .Inject was an option, but we couldn't quite figure out how to get it to work.