# input: string
# output: string
# requirements:
#   each character of the string is doubled
#   capitals letters are preserved
#   blank spaces are NOT doubled
#   empty strings are returned empty
#   punctuation is NOT doubled
#   only consonants are doubled
#   vowels (aeiou) are not doubled

# create a consonent library
# creater a holder array
# split the string into chars
# check if char is in consonent library
# if yes then add 2x
# if no add  char to the array 1x (should capture numbers, and punctuation)
# join the array and return

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X y Z)

def double_consonants(string)
  holder =[]
  string.chars.each do |char|
    if CONSONANTS.include?(char)
      holder << char << char
    else
      holder << char
    end
  end
  holder.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
