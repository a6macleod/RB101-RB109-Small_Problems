# def recursion_sum(num)
#   if num > 0
#     num += recursion_sum(num-1)
#   end
#   num
# end

# def recursion_product(num)
#   if num > 1
#     num *= recursion_product(num-1)
#   end
#   num
# end

puts "Please enter an integer greater than 0:"
input = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

# if operation.downcase == 's'
#   puts recursion_sum(input.to_i)
# end
# if operation.downcase == 'p'
#   puts recursion_product(input.to_i)
# end

if operation.downcase == 's'
  sum = (1..input).inject { |sum, num| sum + num }
  puts sum
end

if operation.downcase == 'p'
  product = (1..input).inject { |sum, num| sum * num }
  puts product
end

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
