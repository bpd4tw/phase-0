#pseudocode
#Input:a list of names
#output:the same names, bundled into groups (cohorts)
#steps:First,I'll create an empty cohort collector to place my cohorts into once I iterate over them. My next step will be to create a line that slices off at least three names starting from index zero and add those "slices" into the empty array. I'll then print the new array with the groups. Also, I'll need to remember to account for the array when one or two people are left as remainders. I'll do this through "if" statements and utilize "%." If I want to shuffle the names of the groups, I'll tack on .shuffle to my argument.
def acct_groups(array)
  empty_array=[]
  if array.length%3==0
    array.each {|x| empty_array<<array.slice!(0, 3)}
    print empty_array
  elsif array.length%3==1
    end_person=array.pop
    array.each {|x| empty_array<<array.slice!(0, 3)}
    empty_array.first<< end_person
    print empty_array
  elsif array.length%3==2
  end_people=array.pop(2)
  array.each {|x| empty_array<<array.slice!(0, 3)}
  empty_array.first<< end_people
  print empty_array
  end
 end

group=["Brian", "Manny", "John", "Ben", "Peter", "Justin", "Bo", "Null", "P"]
acct_groups(group.shuffle)

#What was the most interesting and most difficult part of this challenge?
#The most difficult part was accounting for the "remainder" group members. I had to think for a bit on how to do it, and it made the most sense to utilize "if" statements with "%."

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I do. Pseudocode allows me to step back and analyze what steps need to be taken in my code, and whether I need to look up new Ruby methods or not. My pseudocode is to a point now where it supplies a necessary blueprint that I need before I can start coding.

#Was your approach for automating this task a good solution? What could have made it even better?
#I'm actually pretty pleased with the solution I came up with. The only thing I could do better is add a "print" line that calls out each group with its group name.

#What data structure did you decide to store the accountability groups in and why?
#I decided to use an array. Because I was solely concerned with divvying up the array names and didn't need to play with any values, an array worked perfectly.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? I hadn't really used .slice before. That was challenging, especially getting it to slice every three indices for the entire array. Other than that, though, I didn't really need to refactor. My initial solution worked and is pretty DRY. I could always combine some of my "if" statements into one line, perhaps.