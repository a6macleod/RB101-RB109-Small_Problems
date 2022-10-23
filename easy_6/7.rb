# input: array
# output: 1 array with 2 nexted arrays inside
# requirements
#   the nested arrays are split 1/2 in the first 1/2
#   if an odd number the middle element goes to the first nested array

# instantiate return_array
# instantiate array1
# instantiate array2
# iterate through the input and assign to array1 or array2 based on index
# push array1 and array2 to return array

def halvsies(input_array)
  array1 = []
  array2 = []

  input_array.each_with_index do |el, index|
    if input_array.length.odd? && index < (input_array.length / 2) + 1
      array1 << el
    elsif index < input_array.length / 2
      array1 << el
    else
      array2 << el
    end
  end
  [array1, array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
