# input: integer
# output: Triangle design using *
# requirements:
#   the input is the length (top-bottom) and the width (left-right) of the bottom triangle
#   all stars should be aligned right

# take the input and create a string with all spaces except the last *
# add " " until counter + stars == input
# add "*" until counter == input
# print the string
# put another star on the right maintaining the total length
# print the string
# continue until there are no spaces and only stars

def triangle(input)
  stars = 1
  loop do
    counter = 0
    print_string = ""
    while counter + stars < input
      print_string << ' '
      counter += 1
    end
    while counter < input
      print_string << "*"
      counter += 1
    end
    puts print_string
    stars += 1
    break if stars > input
  end
end

triangle(5)
#    *
#   **
#  ***
# ****
#*****

triangle(9)
#        *
#       **
#      ***
#     ****
#    *****
#   ******
#  *******
# ********
#*********
