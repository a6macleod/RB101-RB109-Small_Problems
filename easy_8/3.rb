# input: string
# output: array
# requirements:
#   the string is broken down into parts
#   the return array includes the first character then one more character at each element
#   the order remains the same

# create an empty array
# push  the first character [0, 1]
# loop over each character in the string adding [0, +1 more]

# def leading_substrings(string)
#   iteration = string.length
#   return_array = []
#   counter = 1
#   iteration.times do
#     return_array << string[0, counter]
#     counter += 1
#   end
#   p return_array
# end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
