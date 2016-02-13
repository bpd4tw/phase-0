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
   longest_word = nil

  def longest_word(sentence)
  words = sentence.split(" ")



  word_idx = 0
  while word_idx < words.length
    current_word = words[word_idx]

    if longest_word == nil
      longest_word = current_word
    elsif longest_word.length < current_word.length
      longest_word = current_word
    end

    word_idx += 1
  end

  return longest_word
end
end