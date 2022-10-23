# input: string
# output: string, surrounded by a box
# requirements
#   take a string in and print out a box around it.
#   top & bottom line starts and ends with +--+
#   and extra line above and below the string book end with a pipe |

# build out an empty box
# print '+-' + string.size * '-' + '-+'
# new line
# '|' + ' ' + string.size * ' ' + '|'
# new line
# '| ' + string + ' |'
# new line
# '|' + string.size * ' ' + '|'
# new line
# print '+-' + string.size * '-' + '-+'

def get_bar(string, character)
  counter = string.length + 2
  dashes = ''
  while counter > 0
    dashes << character
    counter -= 1
  end
  dashes
end

def print_in_box(string)
  dashed_bar = get_bar(string, '-')
  spaced_bar = get_bar(string, ' ')

  line_one = '+' + dashed_bar + '+'
  line_two = '|' + spaced_bar + '|'
  line_three = '|' + ' ' + string + ' ' + '|'
  line_four = '|' + spaced_bar + '|'
  line_five = '+' + dashed_bar + '+'
  puts line_one + "\n" + line_two + "\n" + line_three + "\n" + line_four + "\n" + line_five
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
