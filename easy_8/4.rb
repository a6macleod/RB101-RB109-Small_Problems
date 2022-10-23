# input: string
# output: array of strings
# requirements:
#   return all palindromic strings
#   duplicate palindromes should be shown every time they appear
#   all characters are considered i.e. "-"
#   capital letters should be considered "Abc" != "abc"

# create an empty array to store all substrings
# start with the first letter and create all leading sub strings one letter at a time
# move on to the next letter and create all leading sub strings
# continue iterating until only the last two letters remain (need two for a palindrome)
# once all substrings are in the substring array,
# select only the palindromes

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def is_palindrome?(string)
  string.chars == string.chars.reverse && string.length > 1
end

def palindromes(string)
  sub_strings = []
  counter = 0
  string.chars.each_with_index do |char, index|
    sub_strings << leading_substrings(string[index..-1])
  end
  palindromes = sub_strings.flatten.select { |string| is_palindrome?(string) }
  p palindromes
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-',
  '-madam-did-madam-',
  'madam',
  'madam-did-madam',
  'ada',
  'adam-did-mada',
  'dam-did-mad',
  'am-did-ma',
  'm-did-m',
  '-did-',
  'did',
  '-madam-',
  'madam',
  'ada',
  'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
