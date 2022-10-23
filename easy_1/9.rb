def sum(num)
  arr = num.to_s.split('').map { |n| n.to_i }
  arr.reduce { |sum, integer| sum + integer }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
