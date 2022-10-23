# input: integer
# output: integer
# requirements:
#   compute the difference between the square of the sum of the first n positive integers
#   and the sum of the squares of the first n positive integers.

# create sum variable
# starting at 1 upto input
# add all together, square the sum and set to the squared_sum variable
# create a sum_of_squares variable
# starting at 1 upto input
# add all the squared index together and set to the sum_of_squares variable
# return the squared_sum variable minus the sum_of_squares variable and return the value

def sum_square_difference(num)
  squared_sum = (1.upto(num).inject { |sum, index| sum + index })**2
  sum_of_squares = 1.upto(num).inject { |sum, index| sum + index**2 }
  squared_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
