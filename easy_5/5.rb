# input: string
# output: string
# requirements:
#   replace all non-alphabetic characters with spaces 1 single space (never more than 1)

# split the string into an array maintaining all characters & spaces
# set alphabetic character variable to true
# if a non-alphabetic char, add a ' ' and set a alphabetic character to false
# only add the ' ' if alphabetic character is true
# when an alphabetic character occurs, change alphabetic variable to true
# map to a new array, pass alphabetic chars and spaces,
# use a while looupdate non-alphabetic chars
# join the array together to a string and return


def cleanup(string)
  alphabetic_char = true
  arr = string.split('').map { |char|
    if char.match?(/[A-Za-z]/)
      alphabetic_char = true
      char = char
    elsif alphabetic_char == true
      alphabetic_char = false
      char = ' '
    end
  }
  p arr.join('')
end

p cleanup("---what's my +*& line?") == ' what s my line '
