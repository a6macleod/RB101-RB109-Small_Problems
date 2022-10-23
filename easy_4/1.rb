# input: two strings
# output: 1 string, shortest + longest + shortest
# requirements
#   explicit:
#     return 1 new string (shortest + longest + shortest)
#     1 empty string, return just the other

def short_long_short(first, second)
  if first.length < second.length
    first + second + first
  else
    second + first + second
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
