# input: integer
# output: array of integers
# requirements:
#   assume input is always positive integer
#   return should be 1..input

# create an empty array
# using a range, push each digit into the array
# return the array

def sequence(val)
  arr = []
  (1..val).each do |num|
    arr << num
  end
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
