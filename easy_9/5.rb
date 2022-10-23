# input: string
# output: boolean
# requirements:
#   return true if all letters of input string are capitalized
#   false if they are lower case
#   ignore non-alphabetic chars
#   ** calling upcase on non-alphabetic chars does nothing to them **

# compare input string to input string.upcase

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
