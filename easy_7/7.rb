# input: array of integers
# output: float rounded to 3 numbers
# requirements:
#   multiply all the numbers from the input array together
#   divide the result by number of input entries
#   round the result to 3 digits past 0
#   return the result

# multiply (inject) all the inputs
# divide the result by input.length
# round the answer to 3
# format the return to show 3 digits past decimal
# return

def show_multiplicative_average(array)
  number = ((array.reduce(:*)) / array.length.to_f)#.round(3)
  "The result is #{sprintf("%.3f", number)}"
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
