# input: string
# output: boolean
# requirements
#   return true or false based on if the word can be spelled
#   letters are paired off and only 1 from each pare can be used.
#   Letters are all uppcase or all downcase not mixed

# split the string into an array and make upcase
# iterate each element
# check if the element is in the already_used array
#   if not compare the string to the array of blocks
#   add the block which contains the element to the already_used array
# if it is present in the already_used array return false
# if all elements are iterated return true

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(string)
  used_blocks = []
  string.upcase.chars.each do |char|
    return false if used_blocks.include?(char)
    BLOCKS.each do |sub_array|
      if sub_array.include?(char)
        (used_blocks << sub_array).flatten!
      end
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
