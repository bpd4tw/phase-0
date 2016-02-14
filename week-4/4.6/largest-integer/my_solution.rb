# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
    max_num=list_of_nums.first

  list_of_nums.each do |current_num|
   if list_of_nums.nil?
      return nil
      end
   if current_num > max_num
      max_num = current_num
      end
  end
  return max_num
end