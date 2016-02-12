# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

 cartmans_phrase="Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#It says the line number is 170, when actually it is 16.
# 3. What is the type of error message?
#The error message is unexpected-end-of-input
# 4. What additional information does the interpreter provide about this type of error?
#The interpreter lets us know it is expecting an "end" for our code.
# 5. Where is the error in the code?
#The error is actually in line 16, in the body of the method.
# 6. Why did the interpreter give you this error?
#The interpreter gave us this error because we were missing an "end" in the method's body. As a result, the method was never properly closed out and the interpreter jumped to the final line of the code to tell us.

# --- error -------------------------------------------------------

south_park="Best show ever"

# 1. What is the line number where the error occurs?
#Line 36
# 2. What is the type of error message?
#Name Error
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter informs us that south_park is the variable that is undefined We have an undefined local variable or method in our code.
# 4. Where is the error in the code?
#There need to be some sort of value assigned to south_park.
# 5. Why did the interpreter give you this error?
#South_park is being called upon in our code, but it has no value assigned to it. It is undefined an just a floating variable

# --- error -------------------------------------------------------

def cartman(least_fav_person)
end


# 1. What is the line number where the error occurs?
#Line 51
# 2. What is the type of error message?
#No-method-error
# 3. What additional information does the interpreter provide about this type of error?
#We have an undefined method "cartman" for our main object.
# 4. Where is the error in the code?
#The method cartman needs to be defined. Needs to start with "def." We also need to add an "end," too.
# 5. Why did the interpreter give you this error?
#The interpreter recognized that we're calling a method that has begininng. We need "def" to define it.

# --- error -------------------------------------------------------

def cartmans_phrase(response)
  puts "I'm not fat; I'm big-boned!"
end

# 1. What is the line number where the error occurs?
#68
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#We have the wrong number of arguments. We gave an argument, but the method isn't expecting any (i.e. 0).
# 4. Where is the error in the code?
#The error is after the method name. We need parentheses for paramters so that the method can acept arguments.
# 5. Why did the interpreter give you this error?
#We have a method that is expecting an argument but can't accept any.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("suck my balls")

# 1. What is the line number where the error occurs?
#Line 85.
# 2. What is the type of error message?
#Argument error.
# 3. What additional information does the interpreter provide about this type of error?
#The code has the wrong number of arguments. It expects one argument but none is provided.
# 4. Where is the error in the code?
#When someone calls upon the method, they need to provide an argument as well.
# 5. Why did the interpreter give you this error?
#The method here is being properly utilized. In order for a method to give an ouput, it needs some sort of input.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "My first name is Eric!")

# 1. What is the line number where the error occurs?
#Line 106
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
#The method was given 1 argument but expected 2.
# 4. Where is the error in the code?
#The called upon method only was given one argument. It needs one more to execute.
# 5. Why did the interpreter give you this error?
#The interpreter recognized that the method cannot execute with one argument. Two are necessary.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#Line 125
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#It writes "strings can't be coerced into Fixnum." It means that you can't multiply a number by a string, as the code attempts to do here.
# 4. Where is the error in the code?
#Either the operation needs to be between two numbers, or it needs to be switched so the string is multiplied by the number.
# 5. Why did the interpreter give you this error?
#The interpreter recognized that this operation is not plausible.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
#Line 140.
# 2. What is the type of error message?
#Zero division error.
# 3. What additional information does the interpreter provide about this type of error?
#After the division sign, we attempted to divide a number by 0
# 4. Where is the error in the code?
#You can't divide a number by zero. Zero needs to be switched to either an integer or a float.
# 5. Why did the interpreter give you this error?
#Dividing by zero is not a proper arithmetic operation. It is not possible and the interpreter picked up on this.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#Line 156.
# 2. What is the type of error message?
#Load error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter lets me know it can't load such a file and then shows the path is attempted to navigate to find it.
# 4. Where is the error in the code?
#I don't have that file in my local device that it searches.
# 5. Why did the interpreter give you this error?
#The interpreter recognized that this file doesn't exist. If I were to make one, it would work fine.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#The first error on line 13. It threw me off that the interpreter kept saying the error was in line 170. It took some careful investigation for me to realize that the method hadn't been ended properly.

#How did you figure out what the issue with the error was?
#I had to inspect the code meticulously to realize what was included properly and what was missing. It made me think about how certain aspects of Ruby run in relation to the interpreter.

#Were you able to determine why each error message happened based on the code?
#Yes I was. It was pretty straightforward most of the time, espcially after studying up on variables and methods this week.

#When you encounter errors in your future code, what process will you follow to help you debug?
#I'll first jump to the line where the error occurs. Then I'll look at the error message and extra info provided to understand what the problem really is. If I'm still confused, I'll check out debugging techniques online.