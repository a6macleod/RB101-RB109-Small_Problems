# input: array
# output: array
# requirements:
#   array is rotated where the beginning becomes the end by 1
#   a new array is created and original is unchanged

# create a new array
# create a holder array for elements to shift
# iterate the original array
# push the first element to the holder array
# push the rest of the elements to the return array
# concatenate the shifted array to the end of the return array

# return the array

def rotate_array(input_array)
  return_array = []
  input_array.each do |element|
    return_array << element
  end
  return_array << return_array.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
