# input: integer
# output: string
# requirements:
#   convert the integer to a string

# divide the number by 10 using divmod
# the resulting number is assigned to a variable
# the remainder is converted to a string by looking it up on an array of strings by index which equals the number
# the remainder is pushed to the results string
# this basically chops off that last digit of the number,
# the remaining number is looped again until the remaining number is 0

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(5005) == '5005'
