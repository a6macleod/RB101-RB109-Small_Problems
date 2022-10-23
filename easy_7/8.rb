# input: 2 arrays of integers
# output: 1 array of integers
# requirements:
#   each index of the input arrays are multiplied and pushed to the output same index
#   input arrays have the same length

# create an empty holder array
# iterate one of the arrays with index
# multiply the input1 and input2[index]
# push the value to the holder array
# return holder array

def multiply_list(array1, array2)
  holder_array = []
  array1.each_with_index do |array1_element, index|
    holder_array << (array1_element * array2[index])
  end
  holder_array
end

def zipped_multiply_list(array1, array2)
  p array1.zip(array2).map { |a, b| a * b }
end

p zipped_multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
