# input: 3 integers
# output: symbol
# requirements:
#   return symbol is either
#   equilateral - All 3 sides are of equal length
#   isosceles - 2 sides are of equal length, while the 3rd is different
#   scalene - All 3 sides are of different length
#   invalid - if either of the following is not true
#     sum of two shortest sides must be greater than the longest side
#     All sides must be greater than 1

# check if triangle is invalid
# check if all sides are equal - equilateral
# check if two sides are equal - isosceles
# else scalene

def is_triangle?(one, two, three)
  sorted_lengths = [one, two, three].sort
  true if (sorted_lengths[0] + sorted_lengths[1] > sorted_lengths[2]) &&
          ((one > 0) && (two > 0) && (three > 0))
end

def triangle(one, two, three)
  return :invalid unless is_triangle?(one, two, three)
  return :equilateral if (one == two) && (two == three)
  return :isosceles if one == two || two == three || one == three
  return :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
