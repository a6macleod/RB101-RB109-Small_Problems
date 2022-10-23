def sum(first, second)
  first + second
end
def subtraction(first, second)
  first - second
end
def multiplication(first, second)
  first * second
end
def division(first, second)
  first / second
end
def modulo(first, second)
  first % second
end
def exponential(first, second)
  first ** second
end

def print_math(first, second)
  puts "==> #{first} + #{second} = #{sum(first, second)}"
  puts "==> #{first} - #{second} = #{subtraction(first, second)}"
  puts "==> #{first} * #{second} = #{multiplication(first, second)}"
  puts "==> #{first} / #{second} = #{division(first, second)}"
  puts "==> #{first} % #{second} = #{modulo(first, second)}"
  puts "==> #{first} ** #{second} = #{exponential(first, second)}"
end

puts "==> Enter the first number:"
first = gets.chomp.to_i
puts "==> Enter the second number:"
second = gets.chomp.to_i

print_math(first, second)

# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
