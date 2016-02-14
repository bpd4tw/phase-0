# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  largest_word=list_of_words.first
  list_of_words.each do |current_word|
    if list_of_words.nil?
      return nil
    end
    if current_word.length>largest_word.length
      largest_word=current_word
    end
  end
  return largest_word
end