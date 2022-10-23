# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Easy asnwer
def is_odd?(number)
  number.odd?
end

# using my own logic
# def is_odd?(number)
#   if number % 2 == 0 || number == 0
#     false
#   else
#     true
#   end
# end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
