# input: integer
# output: integer
# requirements:
#   use recursion (call itself, use the return value, have stop condition)
#   the argument is the nth Fibonacci number to be calculated
#   the return value is the Fibonacci number

# [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...]

# call Fibonacci with the input
# return 1 if input is 1 **Break condition**
# else call input + Fibonacci(input - 1)

# F(n) = F(n - 1) + F(n - 2) where n > 2

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
