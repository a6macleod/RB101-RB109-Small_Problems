# input: integer
# output: integer
# requirements:
#   always return the negative number of the input
#   negative input remains negative for output
#   zero returns zero (there is no negative 0)

# check if input is zero and return 0 if true
# check if input is already negative and return input if true
# else return -input

def negative(val)
  val == 0 ? 0 : -(val.abs)
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
