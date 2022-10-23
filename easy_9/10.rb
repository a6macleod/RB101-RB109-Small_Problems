# input: array
# output: array
# requirements:
#   convert the input array of subarrays to one array
#   each input sub array is a word and a number
#   the word should be repeated in the new array as many times as the number

# create a holder array
# iterate through EACH sub-array
# use the number.times do to add the word to the holder array

def buy_fruit(array)
  new_array = []
  array.each do |sub_array|
    sub_array[1].times do
      new_array << sub_array[0]
    end
  end
  new_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
