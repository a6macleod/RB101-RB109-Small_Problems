# input: integer
# output: integer
# requirements:
#   calculate fib using procedural methods

def fibonacci(input)
  counter = 0
  array = [1, 1]
  current_number = array[1]
  loop do
    break if counter >= input -2
    array << array[-2] + array[-1]
    counter += 1
  end
  array[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
