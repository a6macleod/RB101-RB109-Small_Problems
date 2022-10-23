# input: array
# output: array
#   requirements:
#     each number of the output array is a runnint total of the original array at that position

# create a new array
# for each array element,
  # sum all the elements of the original array up to that index
  # add the sum to the new array

def running_total(arr)
  totals = []
  arr.each_with_index { |val, index| totals << arr[0..index].inject(:+) }
  totals
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
