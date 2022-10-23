# input: string
# output: array
# requirements:
#   output array contains an element for each input string word
#   each array element is a string
#   each array element string is "word word_length"

# split the string into an array
# use map to create a new array
# use string interpolation to return a string with the word and the word.length

def word_lengths(string)
  string.split.map do |word|
    "#{word} #{word.length}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
