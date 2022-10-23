# input: string
# output: string
# requirements:
#   output character alternate between capitals and lowercase
#   first letter is capital
#   spaces and non-letter chars are included in the alternating schema
#   spaces and non-letter chars are preserved

# split the string into an array of chars
# iterate the array
# if index is 0 or even capitalize
# if index is odd downcase
# join the array back to a string and return.

def staggered_case(string)
  staggered_string = ''
  string.chars.each_with_index do |char, index|
    case
    when index.even? || index == 0
      staggered_string << char.upcase
    when index.odd?
      staggered_string << char.downcase
    else
      staggered_string << char
    end
  end
  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
