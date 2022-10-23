# input: string
# output: string
# requirements:
#   returned string has its words in the same order but the first and last letter of each word are swapped
#   capitals are preserved on their letter

# split the string into an array
# iterate through the array and swap the first and last letter of each word
# join the array back together, adding back the spaces

def swap(string)
  split_string = string.split
  split_string.each { |word|
    first_letter = word[0]
    last_letter = word[-1]
    word[0] = last_letter
    word[-1] = first_letter
}
  split_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
