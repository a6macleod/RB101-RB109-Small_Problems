# input: year (integer)
# output: a string of the century
# requiments:
#   returns a string with st, nd, rd, or th where approriate

# round the number up to the next 100
# take off the last two digits of the rounded integer
# add the suffix depending on the last digit
# 1 == st
# 2 == nd
# 3 == rd
# 4, 5, 6, 7, 8, 9, 0 th

def century(year)
  rounded_year = year
  while rounded_year % 100 != 0
    rounded_year += 1
  end
  century = rounded_year.to_s.slice(0..-3)
  case
  when century[-2..-1] == '11' || century[-2..-1] == '12' || century[-2..-1] == '13'
    century + 'th'
  when century[-1] == '1'
    century + 'st'
  when century[-1] == '2'
    century + 'nd'
  when century[-1] == '3'
    century + 'rd'
  else
    century + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
