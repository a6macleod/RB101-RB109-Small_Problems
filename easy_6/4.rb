# input: array
# output: array
# requirements:
#   reverse the array without using Array#reverse or #reverse!
#   need to mutate the array and return the same object

# get the length of the array
# make an empty array
# iterate through the original array, assigning the array values to the new array
# iterate through the new array and use assignment to reassign the values of the old array reversed
# return the old array

def reverse!(array)
  holder_array = []
  array_length = array.length - 1
  array.each { |el, index| holder_array << el }

  holder_array.each do |el|
    array[array_length] = el
    array_length -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
