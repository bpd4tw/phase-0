
# Pad an Array

# I worked on this challenge [with:Juli ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#Our designated array, size and padding style

# What is the output? (i.e. What should the code return?)
#The array, padded if necessary

# What are the steps needed to solve the problem?
#define two different methods, one destructive the other not. If at least as large as number, return array. Use an else for otherwise.
#Continue to make a variable for pad size that will equal the difference between size and array length. Multiply pad by padsize. Return array with padsize added on.

#For the destructive, push the necessary pad into the original array to change the original input.

# return [1, 2, 3 ] + pad + pad

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size==0
    return array
  end
  while array.length < min_size
    array.push(value)
  end
  if array.length >= min_size
     return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  return [] + array if min_size==0
  pad_size= min_size - array.length
  pad_size_array = Array.new(pad_size, value)
  if array.length >= min_size
     return [] + array
  else
   return array + pad_size_array
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size==0 || if array.length>=min_size
    return array
  end
  while array.length < min_size
    array.push(value)
  end
end


# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#Yes. My partner and I did a solid job of going step by step in terms of necessary code thatll have to be written
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#It wasn't too difficult translating our pseudocode. The only thing that took a bit of thought was the process of making a function destructive or not and how to store values/objects.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Our code did a nice job of passing most of the tests. We only really got hung up with the non-destructive method. We realized that in order for our code to pass, we'd have to return the original array inside of a new blank one so that our coe didn't repeat the array input as an output.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
#We didn't, unfortunately. Instead, we just had some if statements for "gotcha clauses" that we could simplify into one line.

#How readable is your solution? Did you and your pair choose descriptive variable names?
#Our solution is pretty readable. Our variable names match up well with what they are holding.

#What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods take an input and permanently change it through its code. The original object is returned as an altered form of its original self. A non-destructive code takes an object and returns a new value, but is not permanently altered. If you were to solely call upon the object of a non-desctructive method even after it was passed through the method, the value would be the same as always.