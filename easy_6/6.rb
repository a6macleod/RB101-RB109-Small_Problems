# input: 2 arrays
# output: 1 array
# requirements:
#   1 array returned with no duplicates #uniq
#   sort array smallest to largest

# concat the two arrays
# Array#uniq to remove duplicates
# Array#sort! to order the array

# def merge(arr1, arr2)
#   arr3 = arr1.concat(arr2)
#   arr3.uniq!.sort!
# end

# or
def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
