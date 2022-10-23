# input: string
# output: hash
# requirements:
#   3 entries returned
#     1: number of characters in the string that are lowercase
#     2: number of characters in the string that are uppercase
#     3: number of characters in the string that are not lower or upper case
#   entries are labeled lowercase:, uppercase:, neither and always returned
#   empty string returns all three with values of 0
#   empty spaces are treated as "neither"

# create an hash with labeled keys and values of 0
# split the string into an array of elements
# iterate the array and compare each element
# if lowercase, increment lowercase
# if uppercase, increment uppercase
# if neither upper or lower, increment neither
# return the hash

def letter_case_count(string)
  counted_cases = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    case char
    when 'a'..'z'
      counted_cases[:lowercase] += 1
    when 'A'..'Z'
      counted_cases[:uppercase] += 1
    else
      counted_cases[:neither] += 1
    end
  end
  counted_cases
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
