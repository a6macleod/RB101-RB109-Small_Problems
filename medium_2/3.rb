# input: string
# output: hash
# requirements:
#   return 3 entries:
#   keys
#     lowercase
#     uppercase
#     neither
#   values = %
#   percentages are floats
#   spaces are note included


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

def letter_percentages(string)
  percentages = letter_case_count(string)
  percentages[:lowercase] = (percentages[:lowercase].to_f / string.size) * 100
  percentages[:uppercase] = (percentages[:uppercase].to_f / string.size) * 100
  percentages[:neither] = (percentages[:neither].to_f / string.size) * 100
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
