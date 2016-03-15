# U2.W6: Testing Assert Statements

# I worked on this challenge with Leo Kukhar for 45 minutes.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Define a method called assert
# Designate a statement that involves an unless clause and yeild parameter
# If yield is false, raise an error string message
# Create ield codeblock
# The first statement is a variable assignment to "bettysue"
# Assert method call to "bettysue" to make check that it yields no error
# Assert methoid call to "billybob" to check that it does throw an error
# The assert method in line 14 raises an arguement error because the unless clause and yield parameter isn't met (returns false).


# 3. Copy your selected challenge here


def get_grade(score)
  if score>=90
    return "A"
  elsif score>=80 && score<90
    return "B"
  elsif score>=70 && score<80
    return "C"
  elsif score>=60 && score<70
    return "D"
  elsif score<60
    return "F"
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements


#require_relative "my_solution"

# describe 'get_grade' do
#   it 'is defined as a method' do
#     expect(defined?(get_grade)).to eq 'method'
#   end
#   it 'returns "A" when the average is >= 90' do
#     expect(get_grade(90)).to eq "A"
#   end
#   it 'returns "B" when the average is >= 80' do
#     expect(get_grade(88)).to eq "B"
#   end
#   it 'returns "C" when the average is >= 70' do
#     expect(get_grade(72)).to eq "C"
#   end
#   it 'returns "D" when the average is >= 60' do
#     expect(get_grade(66)).to eq "D"
#   end
#   it 'returns "F" when the average is < 60' do
#     expect(get_grade(50)).to eq "F"
#   end
# end

def assert
  raise "fail" unless yield
end


assert {get_grade(95) == "A"}
assert {get_grade(85) == "B"}
assert {get_grade(75) == "C"}
assert {get_grade(65) == "D"}
assert {get_grade(59) == "F"}



# 5. Reflection

# What concepts did you review in this challenge?
# In this challenge, we reviewed assertion statements and implementing them on different methods.
# What is still confusing to you about Ruby?
# Knowing whether methods we code ourselves actually already exist as built in Ruby methods.
# What are you going to study to get more prepared for Phase 1?
#Going over Sublime hotkeys, general Ruby review from weeks 4-6 and a bit of JavaScript review.
