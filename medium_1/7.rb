# input: string
# output: string
# requirements:
#   a string is inputed and any words that are numbers should be converted to a digit
#   one string is returned with digits instead of the numbers in it
#   only will see numbers zero, one, two, three, four, five, six, seven, eight, nine
#   numbers will be lowercase

# split the string into an array
# iterate each array word and note its index
# check the word against a hash library of numbered words and integer string
#   create an empty variable for punctuation
#   split the word and check if punctuation exists (non-letters)
#   if so assign the punctuation to the char
#   delete the punctuation from the string
# if the word matches a numbered word, use the noted index to replace it with the integer string
# if the word does not match, do nothing to the word
# add back the punctuation
# after iterating the whole array, join it back to a string and return

NUMBERED_WORDS_LIBRARY = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9',
}

def word_to_digit(string)
  array = string.split
  updated_words = array.map do |word|
    punctuation = ''
    word.chars.each do |char|
        if char =~ /[^a-z]/i
          punctuation = char
          word = word.delete char
        end
      end
    if NUMBERED_WORDS_LIBRARY.keys.include?(word)
      word = NUMBERED_WORDS_LIBRARY[word] + punctuation
    else
      word + punctuation
    end
  end
  updated_words.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
