# Ask for the width of the room in meters
# width = gets.chomp
# ask for the length of the room in meters
# length = gets.chomp
# calculate area in meters
# calculate area in sq. feet
# print The area of the room is XX square meters (XX square feet)
SQ_M_TO_SQ_FT = 10.7639
puts "Enter the length of the room in meters:"
width = gets.chomp
puts "Enter the width of the room in meters:"
length = gets.chomp
sq_meters = width.to_f * length.to_f
sq_feet = (sq_meters * SQ_M_TO_SQ_FT).round(2)

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
