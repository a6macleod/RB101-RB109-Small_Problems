# first solution
# def oddities(arr)
#   odd_array = []
#   arr.each_with_index { |element, index|
#     if index % 2 == 0
#       odd_array << element
#     end
#   }
#   odd_array
# end

# second solution
# def oddities(arr)
#   odd_array = []
#   index_counter = 0
#   while index_counter < arr.length
#     if index_counter.even?
#       odd_array << arr[index_counter]
#     end
#     index_counter += 1
#   end
#   odd_array
# end

def other_oddities(arr)
  odd_array = []
  arr.each_with_index { |element, index|
    if index % 2 == 1
      odd_array << element
    end
  }
  odd_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])

# puts other_oddities([2, 3, 4, 5, 6]) == [3, 5]
# puts other_oddities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# puts other_oddities(['abc', 'def']) == ['def']
# puts other_oddities([123]) == []
# puts other_oddities([]) == []
