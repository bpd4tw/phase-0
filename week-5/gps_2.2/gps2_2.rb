
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 # define a new function for list that willa ccept strings as input.
 # set default quantity to zero
 # print the list to the console.
# output: hash key values output to console.
​
def new_grocery_list(items)
 grocery_list = Hash.new(0)
 item_list=items.split(" ")
 item_list.each do |item|
   grocery_list[item]+=1
 end
 return grocery_list
end
​
current_list=new_grocery_list("carrots apple cereal pizza")
​
# Method to add an item to a list
# input: item name and optional quantity
# steps: Use list, checkout item and increment by desired value
# output:return list
def add_to_grocery_list(grocery_list, item, quantity=1)
   grocery_list[item] += quantity
   return grocery_list
end
add_to_grocery_list(current_list, "apple", 5)
​
# Method to remove an item from the list
# input: The grocery list, the item
# steps: iterate over items and delete the chosen item
# output: the list
​
def delete_from_grocery_list(grocery_list, item)
    grocery_list.each do |key,value|
        if key == item
            grocery_list.delete(item)
        end
    end
    return grocery_list
end
​
delete_from_grocery_list(current_list, "apple")
​
​
# Method to update the quantity of an item
# input: grocery list, item and new quantity
# steps: iterate over items, update quantity
# output: the list
​
def update_grocery_list(grocery_list, item, new_quantity)
    grocery_list[item] = new_quantity
    return grocery_list
end
​
puts update_grocery_list(current_list, "apple", 99)
​
# Method to print a list and make it look pretty
# input: the grocery list
# steps: print with strings in a sentence
# output: pretty string
​
def print_grocery_list(grocery_list)
    print "Look at all these items! I need to get "
    grocery_list.each do |item, quant|
        print quant.to_s+" "+item+"s, "
    end
    puts "wow! I've got a lot of groceries!"
end
​
print_grocery_list(current_list)

#What did you learn about pseudocode from working on this challenge?
#I learned that pseudocode is great for prepping your code. It breaks each element of code writing down so the task isn't as daunting as it may seem. Plus, it keeps you organized.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#If we used arrays, our list would have just kept growing as we added like items to it. With hashes, we just used the type of grocery as our key and then increased the value. That kept it much more orderly.

#What does a method return?
#Methods return that last line entered before "end." The should return whatever value the steps within the code execute.

#What kind of things can you pass into methods as arguments?
#You can pass arrays, hashes, integers and strings in methods as arguments.

#How can you pass information between methods?
#You can pass information between methods by running on method on some objects and then embedding that method within another.

#What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge really solidified using hashes in methods for me. It'll take a bit more practice, but I'll get used to passing information between methods.