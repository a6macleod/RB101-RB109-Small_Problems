# input: string
# output: string
# requirements:
#   output character alternate between capitals and lowercase
#   first letter is capital
#   spaces and non-letter chars are excluded in the alternating schema
#   spaces and non-letter chars are preserved

# create a holding string
# split the string into an array of chars
# create a variable indicating upcase or downcase
# iterate the array
# if a letter make upcase or downcase and push to the holding string
# change the variable indicating upcase or downcase
# if not a letter push to the holding string
# return the holding string after iteration


def staggered_case(string)
  holding_string = ''
  need_upcase = true

  string.chars.each do |char|
    if char =~ /[A-Za-z]/
      if need_upcase
        holding_string << char.upcase
      else
        holding_string << char.downcase
      end
    need_upcase = !need_upcase
    else
      holding_string << char
    end
  end
  holding_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
