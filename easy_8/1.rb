# input: array
# output integer
# requirements:
#   array always has 1 or more elements
#   array elements are always integers
#   sumation starts with the first element
#   next value adds all previous elements with the next element

# create a new array with sub-arrays for each equation
# create an empty array
# iterating through the input array with index
# add the first element as an array with index 0
# add the next element from 0 to index + 1
# continue for all elements in the array
# Find the sums of these sub arrays
# find the sum of the overall array and return
# def sum_of_sums(array)

#   all_values = []
#   array.each_with_index do |el, index|
#     all_values << array[0, index + 1]
#   end
#   sub_totals = all_values.map do |sub_array|
#     sub_array.sum
#   end
#   sub_totals.sum
# end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
