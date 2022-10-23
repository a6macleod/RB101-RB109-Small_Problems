# input: string
# output: string
# requirements:
#   return a new string
#   every word capitalized
#   every other character other than the first is lowercase

# split the words into an array
# iterate the array and make each word all lowercase
# capitalize each word
# join and return the array back to a string
# if the first char is not a letter in a word like a quote, keep it lowercase

def word_cap(string)
  capitalized = string.split.map do |word|
    word.downcase.capitalize
  end
  p capitalized.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
