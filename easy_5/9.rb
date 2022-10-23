# input: string
# output: string
# requirements:
#   take a string and return it with all the consecutive characters collapsed into 1
#   Don't use squeeze

# iterate through the string and make a variable = ''
# add the char if it isn't == variable
# update the variable to the char
# if it is == the variable next


def crunch(string)
  current_char = ''
  crunched = []
  string.chars.each do |char|
    if char == current_char
      next
    else
      crunched << char
      current_char = char
    end
  end
  crunched.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
