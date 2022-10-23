# input: string
# output: string
# requirements:
#   return the middle character
#   if even amount of chars return two chars
#   if odd amount of chars return 1 char

# get length of string
# if odd return string.length divide by 2
# if even return (string.length divide by 2) - 1 to string.length divide by 2

def center_of(string)
  start = string.length / 2
  if string.length.even?
    string[(start - 1)..(start)]
  else
    string[start]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
