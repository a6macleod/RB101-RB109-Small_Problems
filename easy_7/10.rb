# input: string
# output: string
# requirements:
#   return the second to last word from the input sequence
#   word is any sequence of non-blank chars
#  input will always 2+ words

# split the input string into an array
# select and return the array[-2]

def penultimate(string)
  array = string.split
  array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
