# Numbers to Commas Solo Challenge

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#A positive integer
# What is the output? (i.e. What should the code return?)
#The same positive integer, but with a comma after every third index (so after index "two" to start) as long as it is greater than 999
# What are the steps needed to solve the problem?
#first, I'll need to define the method. Then I'll turn the number input into a string, split it(so that it's part of an array I can iterate over), and set that value equal to a variable (split_num).I'll also reverse it to make the iteration easier from left to right. Next, I'll create an empty array . I'll use this empty array to hold "chunks" of the converted string that are three indices long. I'll get these "chunks" of code through a Ruby method (I'll find it in the docs) To end, I'll combine the "chunks" with a comma and then reverse the string so that it reappears as the input integer.


# 1. Initial Solution
def separate_comma(number)
  number_split=number.to_s.reverse.split("")
  empty_array=[]
   while number_split.size>0
      empty_array<<number_split.shift(3).join
   end
  empty_array.join(",").reverse
end


# 2. Refactored Solution
#I tried refractoring with some different Ruby methods, but my code ended up failing. I tried to see if there was an easier way to code in the requirement for "until," but it seems that's my only option as a parameter for shifting through the entire converted string.


# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#While breaking the problem down, I first realized it would be difficult to iterate over the number if it wasn't reversed. So, I quickly recognized it would have to be converted to a string and reversed. I then recognzied that this would be similar to other challenges in that I'd need a blank array to hold some of the code I'd be iterating over. Then, it came down to finding the right Ruby methods for chopping the converted string up (i.e. shift).
#Before coming to the above conclusion, I tinkered around for awhile with different approaches. I was going to try and iterate over the converted string and somehow utilize the "size" method. My problem was I was trying to simply insert a comma for every three indices, when I found it easier to chop the indices up and add them to an empty array.

#Was your pseudocode effective in helping you build a successful initial solution?
#My pseudocode laid the groundwork for what I needed to do with my code, step by step. The problem was daunting at first, so it took me awhile just to organize my thoughts. Once I started writing the psuedocode, it made solving the problem easier as I just needed to follow the steps I spelled out. The only thing I didn't account for in my original pseudocode was the while loop, so I tinkered around for a bit trying to solve that issue.

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#I didn't refactor because I couldn't find any other Ruby methods that would help out my code. I did find some methods though for my original code that I hadn't used before. It took me a great deal of time to get my code to run, and I finally realized I needed a while loop to account for the converted string array while it still had the chunks of sting within it. I also had never used the .join method before. I kept searching and searching for a way to simply insert something between indices. Then, I finally found .join in the Ruby docs, and it made sense to split up my indices first and then use .join and throw in commas between "chunks.""

#How did you initially iterate through the data structure?
#I initially converted the input into a string like my final solution, but I was trying to solve the problem based on the .size method and find a way to insert a comma for every third index when the size was greater than 4. I couldn't get my code to run succesfully at all with this method, so I switched to .shift so that I could just cut out three index blocks and add my comma through join.

#Do you feel your refactored solution is more readable than your initial solution? Why?
#I feel like the solution I got is straightforward and easy to follow. I could try using gsub, but that seems a bit over my head at this point in time.