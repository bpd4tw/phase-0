# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  array_2.each do |y|
    array_1.push(y)
  end
  return array_1
end
