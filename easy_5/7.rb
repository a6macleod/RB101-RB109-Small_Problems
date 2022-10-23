# input: string
# output: hash
# requirements:
#   return a hash with the key == word.siz; key == number of words that length
#   remove all punctuation from words before counting the size

def cleanup(text)
  text.gsub(/[^a-zA-Z]/, '').squeeze('')
end

def word_sizes(string)
  return_hash = Hash.new(0)
  string.split.each { |word| return_hash[cleanup(word).size] += 1 }
  return_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
