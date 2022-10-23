# input: array
# output: array (mutated input)
# requirements:
#   output should match the #sort method call
#   bubble sort should step through the array
#   each pair of elements are compared and swapped if a > b
#   if the step through is completed and no swaps are made the sort is complete

# create a loop
# create variable swap_occured = false
# compare each element starting at [0] until the end
# if a swap occurs, swap_occured = true
# break if swap_occured = false
# return the mutated array

def bubble_sort!(arr)
  loop do
    swap_occured = false
    arr.each_with_index do |_, index|
      if (index + 1 <= arr.length - 1) && (arr[index] > arr[index + 1])
        swap_occured = true
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
    end
    break if swap_occured == false
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
