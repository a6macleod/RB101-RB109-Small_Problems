# input: two integers
# output: array
# requirements:
#   first integer count, how many integers will be returned
#   second number is first number in the sequence
#   count will always be 0 or positive
#   count == 0? return empty array

# create a holder array
# create a value holder = 0
# use the count as a .times do block
# starting at 0 add the count for each iteration to value holder and push to the holder array
# return the holder array

def sequence(count, add_by)
  arr = []
  current_val = 0
  count.times do
    arr << current_val += add_by
  end
  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
