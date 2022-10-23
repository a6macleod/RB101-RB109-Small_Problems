# input: integer
# output: integer
# requirements:
#   digits are reversed from input
#   returned as an integer
#   if there are leading zeros they are removed
#   single digit integer returns the same single digit integer

# convert the integer to a string
# reverse the string
# convert to an integer and return

def reversed_number(integer_input)
  integer_input.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
