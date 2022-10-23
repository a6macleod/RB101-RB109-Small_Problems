require 'date'

puts Date.civil
# 1) -4712-01-01 returns this year unless denoted otherwise
puts Date.civil(2016)
# 2) 2016-01-01
puts Date.civil(2016, 5)
# 3) 2016-05-01
puts Date.civil(2016, 5, 13)
# 4) 2016-05-13

# What will each of the 4 puts statements print?
