# input: integer
# output: diamond shape of asterisks
# requirements:
#   input is always odd
#   displays an n x n grid so diamond(3) is 3 up and 3 across at the center
#   diamonds start with 1 asterisk and add 2 for each row until the max is reached. Then reverse

# create a current_row = 1 counter
# create a counter number_of_stars = 1
# create a counter number_of_blanks = input / 2
# loop the number of times as the input (creating rows)
#     create as tring
#     iterate the string and add ' ' or *
#       blank spaces get smaller by 1
#       stars increase by 2
#       when number_of_stars == max star line
#       blank spaces get larger by 1
#       stars decrease by 2
#   stop the loop when current_row == input


def diamond(input)
  current_row = 1
  number_of_stars = 1
  number_of_blanks = input / 2
  1.upto(input) do
    row = ''
    number_of_blanks.times { row << ' '}
    number_of_stars.times { row << '*' }
    if current_row <= ((input / 2))
      number_of_stars += 2
      number_of_blanks -= 1
    else
      number_of_stars -= 2
      number_of_blanks += 1
    end
    current_row += 1
    puts row
  end
end

diamond(1)

# *

diamond(3)

#  *
# ***
#  *

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
