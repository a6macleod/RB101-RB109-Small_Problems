# input: integer
# output: integer
# requirements:
#   rotate the whole string
#   keep the first digit in place, rotate the remaining substring
#   keep the 2nd digit in place, rotate the remaining stubstring
#   continue until the last 2 digits are roated
#   leading zeros are dropped
#   no multiple 0's

# integer -> string -> array
# create a counter at 0
# rotate the array from counter to end of array
# increment the counter by 1
# repeat the rotate and increment until counter >= array.length -1
# combine the array to string then to an integer

def rotate_array(input_array)
  return_array = []
  input_array.each do |element|
    return_array << element
  end
  return_array << return_array.shift
end

def max_rotation(integer)
  array = integer.to_s.chars
  counter = 0
  loop do
    break if counter >= array.length - 1
    array[counter..-1] = rotate_array(array[counter..-1])
    counter += 1
  end
  array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
