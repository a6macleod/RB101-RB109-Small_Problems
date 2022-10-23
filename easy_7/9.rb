# input: 2 arrays
# output: 1 array
# requirements:
#   return a new array
#   multiply every number combination possible
#   sort the return array smallest -> largest

# create an empty holder array
# iterate the first array
# each iteration push the product of the iterated num and every number of the other array
# sort the holder array
# return the holder array

def multiply_all_pairs(array1, array2)
  holder_array = []
  array1.each do |array1_element|
    index = 0
    loop do
      holder_array << array1_element * array2[index]
      index += 1
      break if index >= array2.length
    end
  end
  holder_array.sort
end

# NOTE: can use .each instead of the loop for a nested .each

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
