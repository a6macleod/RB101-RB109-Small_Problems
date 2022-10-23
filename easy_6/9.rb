# input: array, integer
# output: boolean
# requirements
#   check if the search value (integer input) is in the array
#   don't use Array#include?

def include?(array, search)
  match = array.select { |el| el == search }
  !match.empty?
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
