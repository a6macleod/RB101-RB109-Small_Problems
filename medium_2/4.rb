# input: string
# output: boolean
# requirements:
#   return true if parenthesis are balanced ()
#   return false if they are not balanced
#   return false if they start with an ) as this cannot be balanced

# iterate the string
# creater holder array
# if ( add to holder array
# if ) remove the last (
# else ) and nothing in holder array return false
# if holder array is empty after full iteration of input return true

def balanced?(string)
  parenthesis = []
  string.chars.each do |char|
    parenthesis << char if char =="("
    if char == ')'
      return false if parenthesis.size < 1
    end
    if char == ')'
      parenthesis = parenthesis[0..-2] if parenthesis.size > 0
    end
  end
  return false if parenthesis.size > 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
