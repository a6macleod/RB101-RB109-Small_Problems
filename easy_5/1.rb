# input: string
# output: integer
# requirements:
#   input a string and calculate the ascii value of each character in the string, add and return

# convert the string into an array of chars
# map the array to a new array where the values are the ascii integers
# add all the values together in the new array and return

def ascii_value(string)
  return 0 if string.length < 1
  ascii_values = string.chars.map { |char| char.ord }
  ascii_values.inject(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
