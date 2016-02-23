# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |array|
  if !array.is_a? Array
    p array + 5
  else
    array.each do |sub_array|
      if !sub_array.is_a? Array
        p sub_array + 5
      end
    end
  end
end


#Refactored

number_array.flatten!(2).each do |element|
  p element + 5
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names do |array|
  if !array.is_a? Array
    p array << "ly"
  else
    array. do |sub_array|
      if !sub_array.is_a? Array
        p sub_array << "ly"
      else
        sub_array.map do |sub_sub_array|
          if !sub_sub_array.is_a? Array
            p sub_sub_array << "ly"
          end
        end
      end
    end
  end
end

#Refactored

startup_names.flatten!(2).each do |word|
  p word << "ly"
end

#reflection
#What are some general rules you can apply to nested arrays?
#It's important to remember that, when calling a value from a nested array, you
#need to enter the indices of the parent arrays before reaching a desired value in
#a sub-nest.  Also, you can't simply use an operation on an array that contains values in different
#nested levels. Instead, you need to account for values that are still nested with "if" statements (unless
#you flatten the array).

#What are some ways you can iterate over nested arrays?
#Like all arrays, you can iterate over nested arrays using .each. Make sure, like I said above, to use
#"if" statements to account for values in different nested levels. To make it simple, though, you can always flatten the array and then iterate over the values however you see fit.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#We decided in our refactor phase to use .flatten. I had never used this method before, but it's perfect for nested
#arrays. Just flatten the array and then iterate over the values however you see fit. Keep in mind how you want to
#flatten the array, though. Flatten can be destructive.