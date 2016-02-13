# Calculate a Grade

# I worked on this challenge [ with Josh Wu ].


# Your Solution Below

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


