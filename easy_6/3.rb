# input: integer
# output: integer
# requirements
#   input is the number of digits in the fib. number .e. input 2 so 13 has 2 digits
#   output is the number of iterations that is the first instance of length of the fib. number that has at least that many digits i.e. input 2 so 13 has 2 digits so output is 7 for 7 iterations
#   assume input is >= 2

# set counter = 2
# set fib_array = [1, 1]
# run fib sequence loop
#   add next_number to fib_array
#   counter += 1
#   break if next_number >= input.to_s.size
# return fib_array.length

def find_fibonacci_index_by_length(input)
  counter = 2
  fib_sequence = [1, 1]
  loop do
    next_number = fib_sequence[-1] + fib_sequence[-2]
    fib_sequence << next_number
    counter += 1
    break if next_number.to_s.size >= input
  end
  fib_sequence.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
