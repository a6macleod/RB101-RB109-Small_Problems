# input: two integers
# output: one integer, input and n
# requirements:
#   Rotate the last (n) digits
#   n is the length of the substring starting fron the end
#   n is always positive

# turn the integer into a string
# create a substring by the length of n from the end
# combine the front substring and rotated substring
# turn back to an integer

def rotate_array(input_array)
  return_array = []
  input_array.each do |element|
    return_array << element
  end
  return_array << return_array.shift
end

def rotate_rightmost_digits(input, shift)
  input_string = input.to_s
  substring = input_string.slice(-shift, input_string.length)
  (input_string.slice(0...-shift) + (rotate_array(substring.split('')).join)).to_i
end

p rotate_rightmost_digits(123456, 2) == 123465
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
