# input: 3 integers
# output: symbol
# requirements
#   return symbol is either
#   right - One angle of the triangle is a right angle (90 degrees)
#   acute - All 3 angles of the triangle are less than 90 degrees
#   obtuse - One angle is greater than 90 degrees.
#   invalid -
#     the sum of the angles must be exactly 180 degrees
#     all angles must be greater than 0

# check if triangle is invalid
# check if one angle == 90 - right
# check if one angle is greater than 90 - obtuse
# else acute

def is_triangle?(one, two, three)
  true if ((one + two + three) == 180) &&
          ((one > 0) && (two > 0) && (three > 0))
end

def triangle(one, two, three)
  return :invalid unless is_triangle?(one, two, three)
  return :right if (one == 90) || (two == 90) || (three == 90)
  return :obtuse if one > 90 || two > 90 || one > 90
  return :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
