def multiply(first, second)
  first * second
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64
