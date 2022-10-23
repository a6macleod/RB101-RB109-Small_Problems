# input: string
# output: string
# requirements:
#   all upper case letters are replaced by lowercase
#   all lowercase letters are replaced by uppercase
#   all not letters and spaces are preserved
#   don't use String#swapcase

# split the string up by chars
# iterate the array
# use check to assign the char as
#   upcase
#   downcase
#   skip and keep the char (if not a letter)
# return the string

def swapcase(string)
  swapped_chars = string.chars.map do |char|
    case char
    when 'A'..'Z'
      char.downcase
    when 'a'..'z'
      char.upcase
    else
      char
    end
  end
  swapped_chars.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
