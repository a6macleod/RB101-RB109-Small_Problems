# input: array
# output: array
# requirements:
#   take in an array of integers 0..19
#   output an array of integers organized alphabetically by the numbers english word

# create a hash of numbers and english words
# create an empty array
# iterate the array and add english word for that number
# sort the array alphabetically
# map the sorted array to an array with the integers of the english word

NUMBER_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'ninteen'}

def alphabetic_number_sort(arr)
  number_words = arr.map { |num| NUMBER_WORDS[num] }
  number_words.sort!.map { |word| NUMBER_WORDS.key(word) }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
