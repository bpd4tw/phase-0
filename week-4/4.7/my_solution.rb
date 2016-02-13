# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial (n)
  return 1 if n==0
  return nil if n<0
  result=[]
  while n>0

    result.push(n)
    new_n=n-=1
    n=new_n
  end

  return result.inject(:*)
end