# input: integer
# output: true / false
# requirements:
#   leap year if...
#     1) divisible by 4
#     2) not divisible by 100 except if divisible by 400
#     3) any year > 0

# check if year is (divisible by 400) || (divisible by 4 && NOT divisible by 100)

def leap_year?(year)
  (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
