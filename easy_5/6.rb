# input: String
# output: hash
# requirements:
#   return a hash that has a count of how many words at different lengths
#   key == word length; value == number of words at that length
#   keep punctuation and include it in word length

# create an empty hash with default 0
# iterate through the string and add word.size += 1
# return the hash

def word_sizes(string)
  return_hash = Hash.new(0)
  string.split.each { |word| return_hash[word.size] += 1 }
  p return_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
