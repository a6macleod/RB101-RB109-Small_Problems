# input: 2 arrays
# output: 1 new array
# requirements:
#   one array returned
#   every other element of the returned array alternates between the two input arrays
#   input arrays are never empty
#   input arrays are always the same length

# create a counter = 0
# create a return array
# start a loop
# add array1[counter] to return array
# add array2[counter] to return array
# increment the counter
# break the loop when the counter == array1.size || array2.size

def interleave(array1, array2)
  counter = 0
  interleaved_array = []
  loop do
    break if counter >= array1.length || counter >= array2.length
    interleaved_array << array1[counter]
    interleaved_array << array2[counter]
    counter += 1
  end
  interleaved_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def zipped(a, b)
  a.zip(b).flatten
end
p zipped([1, 2, 3], ['a', 'b', 'c'])
# p zipped([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
