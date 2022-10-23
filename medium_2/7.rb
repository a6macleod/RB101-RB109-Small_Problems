# input: Integer year
# output: integer
# requirements:
#

require 'date'

def friday_13th(year)
  number_of_days = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    number_of_days += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  number_of_days
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
