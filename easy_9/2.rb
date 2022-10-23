# input: integer
# output: integer
# requirements:
#   a "double number" is EVEN and the same on left and right (44, 7676, 103103)
#   if not a "double number" the return double the input
#   if input is a double number then return the same number

# check if the input is a double number
# if no return 2*input
# if yes, return the double number unmodified

# check for double number
# transform into a string
# check if string length is even
# take the first have and compare (==) to the second half
# return true/false

def double_number?(val)
  halfway = val.to_s.size / 2
  first_half = val.to_s[0..halfway - 1]
  second_half = val.to_s[halfway..-1]
  val.to_s.size.even? && first_half == second_half
end

def twice(input)
  double_number?(input) ? input : input * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
