# input: array
# output: series of printed array
# requirements:
#   anagram == words that have the exact same letters
#   all letters are downcase
#   return is printed arrays

# create a loop for the input array
# create a holder array
# take the first word add it to the holder array
# split the word into chars
# check all other words to see if it is an anagram
#   separate the word into chars
#   sort and check if it is equal to the first word in chars and sorted

def print_anagrams(array)
  array.each do |current_word|
    output_array = []

    array.each do |word|
      output_array << word if current_word.chars.sort == word.chars.sort
    end

    p output_array
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

print_anagrams(words)
