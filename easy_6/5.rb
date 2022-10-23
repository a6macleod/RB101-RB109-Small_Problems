# input: array
# output: new array
# requirements
#   the new array should be the reverse order as the original array
#   the old array should be unmodified
#   Don't use #reverse or #reverse!
#   Don't use the same method as 4.rb

def reverse(array)
  reverse_index = -1
  index = 0
  new_array = []
  while index < array.length
    new_array << array[reverse_index]
    reverse_index -=1
    index += 1
  end
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
