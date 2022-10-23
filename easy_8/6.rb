# input: string
# output: string
# requirements:
#   each character of the string is doubled
#   capitals letters are preserved
#   blank spaces are doubled
#   empty strings are returned empty
#   punctuation is doubled ! -> !!

# creater a holder array
# split the string into chars
# add each char to the array 2x \
# join the array and return

def repeater(string)
  holder =[]
  string.chars.each do |char|
    # holder << char << char # this also works on one line
    holder << char
    holder << char
  end
  holder.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
