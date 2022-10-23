# input: integer
# output: integer
# requirements:
#   input is the starting point
#   output is the next "featured number"
#   featured number -
#     odd number
#     multiple of 7
#     each digit only appears 1x (133 is NOT bc of 3's)

# create a variable that starts at the provided featured number
# increment the variable by 1 and check the following
# odd?
# var % 7 == 0
# unique_digits
#   make the number a string
#   make the string an array for each digit
#   compare the length of the arry vs array.uniq
#   if same ture else false
# return if it meets all these requiremnts

def unique_digits?(num)
  num.to_s.chars.length == num.to_s.chars.uniq.length
end

def featured(start)
  current_number = start
  loop do
    current_number += 1
    if current_number.odd? && current_number % 7 == 0
      break if current_number >= 9_999_999_999
      return current_number if unique_digits?(current_number)
    end
  end
  'No solution at that starting point'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
