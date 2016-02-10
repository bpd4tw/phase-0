#[Defining a method](define-method/my_solution.rb)
#[Return a formatted address](address/my_solution.rb)
#[Defining Math Methods](math/my_solution.rb)

puts "Hi, what's your first name?"
first_name=gets.chomp
puts "Nice. Now how about your middle?"
middle_name=gets.chomp
puts "Alright. And, finally, what's your last?"
last_name=gets.chomp
puts "Cool. Nice to meet you, " + first_name + " " + middle_name + " " + last_name + " " +"Hope you're doing well."

puts "What's your favorite number?"
fav_number=gets.chomp
better=fav_number.to_i + 1
puts "Try this number out: " + better.to_s + ". Now that's a big number!"

##How do you define a local variable?
###you define a local variable with an "=" sign.

##How do you define a method?
###You define a method using "def" to start, and ending with a paramter "( )" to accept arguments.

##What is the difference between a local variable and a method?
###Ruby methods bundle one or more "statements" into a single block of code. Variables are memory locations that store values and are called upon by typing a given variables name. Methods, then, are mainly comprised of different variables that have already been defined. Instead of writing multiple variables to execute code, a developer can utilize methods to bundle them altogether and save time.

##How do you run a ruby program from the command line?
###To run a ruby program from the command line, type "ruby file_name.rb"

##How do you run an RSpec file from the command line?
###Type "rspec file_name_spec.rb"

##What was confusing about this material? What made sense?
###The material is all pretty straight forward. I just need to make sure to pay attention to smaller details like "puts" vs "return" when writing methods.
